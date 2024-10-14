%% Kalman Filter - Simple vehicle
% Kalman filter application for simple vehicle.
%
% <html>
% <script src='https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML'></script>
% </html>
%
%% System
% Consider a nonlinear stochastic vehicle model:
%
% \[ \dot{{\bf x}} = {\bf f} ( {\bf x}(t) , t ) + {\bf G} (t) {\bf w} (t) \]
%
% where
%
% * \({\bf w}\) white gaussian noise. \({\bf w}(t)\) ~ \(N ( {\bf 0} , {\bf Q}(t) )\)
% * \({\bf f} ( {\bf x}(t) , t )\) n-dimensional function \(n\)
% * \({\bf x}(t)\) state vector \((n \times 1)\)
% * \({\bf G}\) known matrix \((n \times s)\)
%
%% Plant
% In this example, the plant is a nonlinear single track vehicle model with
% nonlinear tire model. See figure below
%
% <<modelSimple.png>>
%

% Import the package with
%

import VehicleDynamicsLateral.*

%%
% Choosing tire and vehicle model.

TirePlant = TirePacejka;
disp(TirePlant)

VehiclePlant = VehicleSimpleNonlinear;
VehiclePlant.tire = TirePlant;
disp(VehiclePlant)

%% Maneuver
% The maneuver to be estimated by the Kalman Filter is defined here.
%
% Choosing simulation parameters:
%

T       = 6;                        % Total simulation time [s]
resol   = 50;                       % Resolution
TSPAN   = 0:T/resol:T;              % Time span             [s]
    
%%
% Running simulation.
%

simulatorPlant = Simulator(VehiclePlant, TSPAN);
simulatorPlant.dPSI0 = 0.35;
simulatorPlant.Simulate

%%
% Printing simulation parameters.
%

disp(simulatorPlant)

%%
% Retrieving states
%

XTPlant     = simulatorPlant.XT;
YTPlant     = simulatorPlant.YT;
PSIPlant    = simulatorPlant.PSI;
vTPlant     = simulatorPlant.VEL;
ALPHATPlant = simulatorPlant.ALPHAT;
dPSIPlant   = simulatorPlant.dPSI;

XOUTPlant   = [XTPlant YTPlant PSIPlant vTPlant ALPHATPlant dPSIPlant];

%%
% Generating graphics of the vehicle in the considered maneuver (plant)
%

gPlant = Graphics(simulatorPlant);
gPlant.TractorColor = 'r';
gPlant.Frame();

%%
%

close all                   % Closing figures

%% Modelo
% O modelo utilizado no algoritmo de estima��o � baseado no mesmo modelo
% f�sico considerado no modelo da planta. Al�m disso, o modelo parte da
% premissa de que o projetista do estimador n�o tem conhecimento adequado
% da curva caracter�stica do pneu. Logo, o modelo de ve�culo � igual ao
% utilizado na planta, por�m, o modelo de pneu � dado pelo modelo linear
% Tire linear, resultando num modelo do sistema de menor complexidade (em
% rela��o � planta) e com mais hip�teses simplificadoras.
%
% Inicializando o pneu
%

TireModel = TireLinear;
disp(TireModel)

%%
% Choosing model vehicle
%

VehicleModel        = VehicleSimpleNonlinear; % Same as plant
VehicleModel.tire   = TireModel;
disp(VehicleModel)

%%
% Simulador com o mesmo vetor TSPAN e simula��o
%

simulatorModel = Simulator(VehicleModel, TSPAN);
simulatorModel.dPSI0 = 0.35;
simulatorModel.Simulate;

disp(simulatorModel)

%%
% Retrieving states
%

XTModel = simulatorModel.XT;
YTModel = simulatorModel.YT;
PSIModel = simulatorModel.PSI;
vTModel = simulatorModel.VEL;
ALPHATModel = simulatorModel.ALPHAT;
dPSIModel = simulatorModel.dPSI;

%%
% A manobra gerada pelo modelo escolhido pelo projetista a partir da mesma
% condi��o inicial � ilustrada na figura a seguir
%

gModel = Graphics(simulatorModel);
gModel.TractorColor = 'g';
gModel.Frame();

%%
%

close all                   % Closing figures

%% Plant and model comparison
% Comparando o modelo de pneu
%

g       = 9.81;
FzF     = VehiclePlant.mF0*g;
FzR     = VehiclePlant.mR0*g;
muy     = VehiclePlant.muy;
nF      = VehiclePlant.nF;
nR      = VehiclePlant.nR;

alpha   = 0:0.5:15;
alpha   = alpha*pi/180;
FyLin   = - TireModel.Characteristic(alpha);
FyFPac  = - TirePlant.Characteristic(alpha, FzF, muy);
FyRPac  = - TirePlant.Characteristic(alpha, FzR, muy);

figure
ax = gca;
set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
plot(alpha(1:floor(end/2))*180/pi,FyLin(1:floor(end/2)),'r')
plot(alpha*180/pi,FyFPac,'g')
plot(alpha*180/pi,FyRPac,'g--')
xlabel('alpha [deg]')
ylabel('Fy [N]')
l = legend('Linear','Pacejka F','Pacejka R');
set(l,'Location','SouthEast')

%%
% Comparando os estados

figure
ax = gca;
set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
plot(TSPAN,XTPlant,'r')
plot(TSPAN,XTModel,'r--')
xlabel('Time [s]')
ylabel('Distance X [m]')

figure
ax = gca;
set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
plot(TSPAN,YTPlant,'g')
plot(TSPAN,YTModel,'g--')
xlabel('Time [s]')
ylabel('Distance Y [m]')

figure
ax = gca;
set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
plot(TSPAN,PSIPlant,'b')
plot(TSPAN,PSIModel,'b--')
xlabel('Time [s]')
ylabel('PSI [rad]')

figure
ax = gca;
set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
plot(TSPAN,vTPlant,'c')
plot(TSPAN,vTModel,'c--')
xlabel('Time [s]')
ylabel('vT [m/s]')

figure
ax = gca;
set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
plot(TSPAN,ALPHATPlant,'m'),
plot(TSPAN,ALPHATModel,'m--'),
xlabel('Time [s]')
ylabel('ALPHAT [rad/s]')

figure
ax = gca;
set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
plot(TSPAN,dPSIPlant,'k')
plot(TSPAN,dPSIModel,'k--')
xlabel('Time [s]')
ylabel('dPSI [rad/s]')

%%
% Comparando a acelera��o longitudinal e transversal

saidasPlant = [XTPlant YTPlant PSIPlant vTPlant ALPHATPlant dPSIPlant];
matDerivEstadosPlant = zeros(size(saidasPlant));
for i = 1:size(saidasPlant,1)
    auxil = simulatorPlant.Vehicle.Model(1,saidasPlant(i,:),TSPAN);
    matDerivEstadosPlant(i,:) = auxil';
end

dXTPlant = matDerivEstadosPlant(:,1);
dYTPlant = matDerivEstadosPlant(:,2);
dPSIPlant = matDerivEstadosPlant(:,3);
dvTPlant = matDerivEstadosPlant(:,4);
dALPHATPlant = matDerivEstadosPlant(:,5);
ddPSIPlant = matDerivEstadosPlant(:,6);

ddXPlant = dvTPlant.*cos(PSIPlant + ALPHATPlant) - vTPlant.*(dPSIPlant + dALPHATPlant).*sin(PSIPlant + ALPHATPlant);
ddYPlant = dvTPlant.*sin(PSIPlant + ALPHATPlant) + vTPlant.*(dPSIPlant + dALPHATPlant).*cos(PSIPlant + ALPHATPlant);

ACELNumPlant = [(ddXPlant.*cos(PSIPlant) - ddYPlant.*sin(PSIPlant))  (-ddXPlant.*sin(PSIPlant) + ddYPlant.*cos(PSIPlant))];

saidasModel = [XTModel YTModel PSIModel vTModel ALPHATModel dPSIModel];
matDerivEstadosModel = zeros(size(saidasModel));
for i = 1:size(saidasModel,1)
    auxil = simulatorModel.Vehicle.Model(1,saidasModel(i,:),TSPAN);
    matDerivEstadosModel(i,:) = auxil';
end

dXTModel = matDerivEstadosModel(:,1);
dYTModel = matDerivEstadosModel(:,2);
dPSIModel = matDerivEstadosModel(:,3);
dvTModel = matDerivEstadosModel(:,4);
dALPHATModel = matDerivEstadosModel(:,5);
ddPSIModel = matDerivEstadosModel(:,6);

ddXModel = dvTModel.*cos(PSIModel + ALPHATModel) - vTModel.*(dPSIModel + dALPHATModel).*sin(PSIModel + ALPHATModel);
ddYModel = dvTModel.*sin(PSIModel + ALPHATModel) + vTModel.*(dPSIModel + dALPHATModel).*cos(PSIModel + ALPHATModel);

ACELNumModel = [(ddXModel.*cos(PSIModel) - ddYModel.*sin(PSIModel))  (-ddXModel.*sin(PSIModel) + ddYModel.*cos(PSIModel))];

figure
ax = gca;
set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
plot(TSPAN,ACELNumPlant(:,1),'r')
plot(TSPAN,ACELNumPlant(:,2),'g')
plot(TSPAN,ACELNumModel(:,1),'r--')
plot(TSPAN,ACELNumModel(:,2),'g--')
xlabel('time [s]')
ylabel('acc. [m/s]')
l = legend('AX Plant','AY Plant','AX Model','AY Model');
set(l,'Location','NorthEast')

%%
% Comparando as derivadas dos estados

% figure
% ax = gca;
% set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
% plot(TSPAN,dXTPlant,'r')
% plot(TSPAN,dXTModel,'r--')
% xlabel('Time [s]')
% ylabel('dX [m/s]')
% l = legend('Plant','Model');
% set(l,'Location','SouthWest')
%
% figure
% ax = gca;
% set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
% plot(TSPAN,dYTPlant,'r')
% plot(TSPAN,dYTModel,'r--')
% xlabel('Time [s]')
% ylabel('dY [m/s]')
% l = legend('Plant','Model');
% set(l,'Location','NorthWest')
%
% figure
% ax = gca;
% set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
% plot(TSPAN,dPSIPlant,'r')
% plot(TSPAN,dPSIModel,'r--')
% xlabel('Time [s]')
% ylabel('dPSI [rad/s]')
% l = legend('Plant','Model');
% set(l,'Location','NorthEast')
%
% figure
% ax = gca;
% set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
% plot(TSPAN,dvTPlant,'r')
% plot(TSPAN,dvTModel,'r--')
% xlabel('Time [s]')
% ylabel('dvT [m/s]')
% l = legend('Plant','Model');
% set(l,'Location','SouthEast')
%
% figure
% ax = gca;
% set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
% plot(TSPAN,dALPHATPlant,'r'),
% plot(TSPAN,dALPHATModel,'r--'),
% xlabel('Time [s]')
% ylabel('dALPHAT [rad/s]')
% l = legend('Plant','Model');
% set(l,'Location','NorthEast')
%
% figure
% ax = gca;
% set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
% plot(TSPAN,ddPSIPlant,'r')
% plot(TSPAN,ddPSIModel,'r--')
% xlabel('Time [s]')
% ylabel('ddPSI [rad/s2]')
% l = legend('Plant','Model');
% set(l,'Location','SouthEast')

%%
% Compara��o - Diferen�a de 10 m na dire��o X no momento da curva.
%

gModel.Frame();
hold on
gPlant.Frame();
gModel.Frame();

%%
%

close all                   % Closing figures

%% Model linearization
% A express�o geral da equa��o linearizada � obtida neste t�pico utilizando o processador simb�lico.
%
% Definindo os s�mbolos:
%

syms XT YT PSI vT ALPHAT dPSI mT IT a b K

%%
% Slip angles
%

ALPHAF = atan((vT * sin(ALPHAT) + a * dPSI)/(vT * cos(ALPHAT))); % Dianteiro
ALPHAR = atan((vT * sin(ALPHAT) - b * dPSI)/(vT * cos(ALPHAT))); % Traseiro

%%
%

pretty(ALPHAF)

%%
%

pretty(ALPHAR)

%%
% Lateral forces
%

FyF = -K*ALPHAF;
FyR = -K*ALPHAR;

%%
%

pretty(FyF)

%%
%

pretty(FyR)

%%
% State equations
%

f1 = vT * cos(ALPHAT + PSI);
f2 = vT * sin(ALPHAT + PSI);
f3 = dPSI;
f4 = (FyF * sin(ALPHAT) + FyR * sin(ALPHAT))/(mT);
f5 = (FyF * cos(ALPHAT) + FyR * cos(ALPHAT) - mT * vT * dPSI) / (mT * vT);
f6 = (FyF * a - FyR * b) / IT;

f = [f1 ; f2 ; f3 ; f4 ; f5 ; f6];

%%
%

pretty(f)

%%
% Vetor de estados

States = [XT ; YT ; PSI ; vT ; ALPHAT ; dPSI];

%%
%

pretty(States)

%%
% O sistema linearizado � escrito na forma
%
% \[ \dot{\bf x} = {\bf F} {\bf x} \]
%
% onde \({\bf F}\) � a matriz din�mica do modelo linear que � calculada a partir da equa��o n�o linear expandida em s�rie de Taylor e truncada nos termos de primeira ordem. Logo, a matriz \({\bf F}\) � dada por
%
% \[ {\bf F} = \left[ \frac{\partial f_i}{\partial x_j} \right]_{n \times n} \]
%
% onde \(i\) e \(j\) indicam as equa��es e variáveis de estado utilizadas no cálculo correpondente à posi��o \((i,j)\) da matriz jacobiana.
%

F = jacobian(f,States);
F = simplify(F);

%%
%

pretty(F)

%% Medi��o
% Continuando simbolicamente, as grandezas medidas s�o:
%
% * Posi��o X
% * Posi��o Y
% * Acelera��o angular
% * acelera��o longitudinal
% * acelera��o transversal
%
% Para isso, utiliza-se as rela��es:
%
% \[ \dot{x} = v_{\rm T} \cos \left( \psi + \alpha_{\rm T} \right) \]
%
% \[ \dot{y} = v_{\rm T} \sin \left( \psi + \alpha_{\rm T} \right) \]
%
% Acelera��o
%
% \[ \ddot{x} = \dot{v}_{\rm T} \cos \left( \psi + \alpha_{\rm T} \right) - v_{\rm T} \left( \dot{\psi} + \dot{\alpha}_{\rm T} \right) \sin \left( \psi + \alpha_{\rm T} \right) \]
%
% \[ \ddot{y} = \dot{v}_{\rm T} \sin \left( \psi + \alpha_{\rm T} \right) + v_{\rm T} \left( \dot{\psi} + \dot{\alpha}_{\rm T} \right) \cos \left( \psi + \alpha_{\rm T} \right) \]
%
% Implementando
%

ddX = f4*cos(PSI + ALPHAT) - vT*(dPSI + f5)*sin(PSI + ALPHAT);
ddY = f4*sin(PSI + ALPHAT) + vT*(dPSI + f5)*cos(PSI + ALPHAT);

%%
% Estes valores obtidos s�o as acelera��es escritas na base fixa \(\{ O {\bf i} {\bf j} {\bf k} \}\). A proje��o destas grandezas na base m�vel \(\{ O {\bf t}_x {\bf t}_y {\bf t}_z \}\) � feita atrav�s da equa��o
%
% \[ {\bf a} = \left( \ddot{x} \cos \psi - \ddot{y} \sin \psi \right) {\bf t}_x + \left( - \ddot{x} \sin \psi + \ddot{y} \sin \psi \right) {\bf t}_y \]
%
% Implementando
%

ACEL = [ddX*cos(PSI) - ddY*sin(PSI) ; -ddX*sin(PSI) + ddY*cos(PSI)];
ACEL = simplify(ACEL);

%%
%

pretty(ACEL)

%%
% A equa��o de observa��es n�o linear � dada por
%
% \[ {\bf z}_k = {\bf h} ({\bf x}_k) + {\bf v}_k \]
%
% com
%
% \({\bf v}_k\) ~ \(N ( {\bf 0} , {\bf R}_k )\)
%
% Linearizando termos
%
% \[ {\bf z}_k = {\bf H} {\bf x}_k + {\bf v}_k \]
%
% onde
%
% \[ {\bf H} = \left[ \frac{\partial h_i}{\partial x_j} \right]_{m \times n} \]
%
% ou seja, a matriz de sa�das {\bf H} � a matriz jacobiana da equa��o de ACEL em rela��o aos estados.
%
% Implementando
%

medNonlinear = [XT ; YT ; f6 ; ACEL];

H = jacobian(medNonlinear,States);
H = simplify(H);

%%
%

pretty(H)

%% Verifica��o da lineariza��o
% Para verificar o procedimento de lineariza��o, um ponto de opera��o referente à movimenta��o do ve�culo em linha reta com uma velocidade prescrita \(v_0\) � utilizado. Esta escolha � t�pica e pode ser verificada facilmente na literatura.
%
% Definindo \(v_0\)
%

syms v0

%%
% Obtendo a matriz din�mica

A = subs(F,States,[0 ; 0 ; 0 ; v0 ; 0 ; 0]);

%%
%

pretty(A)

%%
% Obtendo a matriz de sa�das
%

C = subs(H,States,[0 ; 0 ; 0 ; v0 ; 0 ; 0]);

%%
%

pretty(C)

%% Filtro estendido de Kalman
% Implementa��o do algoritmo
%
% Matriz que distribui o ru�do na equa��o do estado constante
%

G = eye(6); % Matriz identidade (6 x 6)

%%
% Matrizes de covari�ncia
%

Q = eye(6);
R = eye(5);

%%
% Matriz

P0 = eye(6);


%%
% Recuperando as condi��es iniciais usadas acima
%

X0Num = simulatorModel.X0;
Y0Num = simulatorModel.Y0;
PSI0Num = simulatorModel.PSI0;
VEL0Num = simulatorModel.V0;
ALPHAT0Num = simulatorModel.ALPHAT0;
dPSI0Num = simulatorModel.dPSI0;

x0 = [ X0Num ; Y0Num ; PSI0Num ; VEL0Num ; ALPHAT0Num ; dPSI0Num ];
x0 = zeros(6,1);
x0(4)=20;

%%
% Recuperando os par�metros do ve�culo
%

mTNum = VehicleModel.mT;
ITNum = VehicleModel.IT;
aNum = VehicleModel.a;
bNum = VehicleModel.b;
KNum = TireModel.k;

parameters = [mTNum ITNum aNum bNum KNum];

%%
% Obtendo e verificando a acelera��o que vai ser medida.
%

%%
% Inicializando o tempo de intervalo entre uma observa��o e outra.
%

intervalo = 0.1;

%%
%

t = 0:intervalo:T;                  % Vetor com os instantes de observa��o

%%
% Prealocando
%

XOUTopt = zeros(length(t) + 1,length(States)); % Estimativa dos estados ap�s atualiza��o
Popt = zeros(length(t) + 1,1);                 % Matriz de covari�ncia ap�s atualiza��o
Pantes = zeros(length(t) + 1,1);                 % Matriz de covari�ncia antes da atualiza��o
KKalmanopt = ones(length(t) + 1,1);                 % Ganho de Kalman

%%
% Atribuindo os primeiros valores
%

XOUTopt(1,:) = x0';
XOUTantes(1,:) = x0';
Pantes(1,1) = norm(P0);
Popt(1,1) = norm(P0);

% Distribui��o dos erros

pesos = [5; 5; 0.1; 0.5; 0.5];

%%
% Itera��o
%

for j = 1:length(t)
    % �?ndice variando por todos os instantes de observa��o

    % Vetor de tempo de integra��o para a etapa de propaga��o
    tspan = t(j):intervalo/100:t(j)+intervalo;

    % Obtendo as medidas da itera��o
    z = [interp1(TSPAN,XTPlant(:,1),t(j)) ; interp1(TSPAN,YTPlant(:,1),t(j)) ; interp1(TSPAN,ddPSIPlant(:,1),t(j)) ; interp1(TSPAN,ACELNumPlant(:,1),t(j)) ; interp1(TSPAN,ACELNumPlant(:,2),t(j))];

    z = z + pesos.*(rand(5,1)-0.5);

    Fnum = subs(F,[States.' mT IT a b K],[x0.' parameters]);
    Fnum = double(Fnum);
    Hnum = subs(H,[States.' mT IT a b K],[x0.' parameters]);
    Hnum = double(Hnum);

    % Ciclo de propaga��o
    % Transformando a matriz PMat0 \((6 \times 6)\) em um vetor P0 \((1 \times 36)\)
    P0 = reshape(P0',[1 36]);

    [TOUT,Pout] = ode45(@(t,P) IntCov(t,P,Fnum,G,Q),tspan,P0);

    Pmatrix = reshape(Pout(end,:),[6 6])';

    simulatorKalman = Simulator(VehicleModel, tspan);
    % Definindo as condi��es iniciais
    simulatorKalman.X0 = x0(1);
    simulatorKalman.Y0 = x0(2);
    simulatorKalman.PSI0 = x0(3);
    simulatorKalman.V0 = x0(4);
    simulatorKalman.ALPHAT0 = x0(5);
    simulatorKalman.dPSI0 = x0(6);
    % Simulando
    simulatorKalman.Simulate()

    XTKalman = simulatorKalman.XT;
    YTKalman = simulatorKalman.YT;
    PSIKalman = simulatorKalman.PSI;
    vTKalman = simulatorKalman.VEL;
    ALPHATKalman = simulatorKalman.ALPHAT;
    dPSIKalman = simulatorKalman.dPSI;

    XOUTKalman = [XTKalman YTKalman PSIKalman vTKalman ALPHATKalman dPSIKalman];

    % Ciclo de atualiza��o

    ACELKalman = subs(medNonlinear,[States.' mT IT a b K],[XOUTKalman(end,:) parameters]);
    ACELKalman = double(ACELKalman);

    KKalman = Pmatrix*Hnum' / (Hnum*Pmatrix*Hnum' + R);

    XKalman = XOUTKalman(end,:)' + KKalman*(z - ACELKalman);
    PKalman = Pmatrix - KKalman*Hnum*Pmatrix;

    x0 = XKalman;
    P0 = PKalman;

    XOUTopt(j+1,:) = XKalman';
    XOUTantes(j+1,:) = XOUTKalman(end,:);
    Popt(j+1) = norm(PKalman);
    Pantes(j+1) = norm(Pmatrix);
    KKalmanopt(j+1) = norm(KKalman);

end

%% Compara��o
figure
ax = gca;
set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
plot(TSPAN,XOUTPlant(:,1),'r')
p = plot(t(2:end),XOUTopt(2:end-1,1),'r--');
set(p,'Marker','*')
l = legend('Plant','Estim');
set(l,'Location','SouthEast')
xlabel('tempo [s]')
ylabel('x [m]')

figure
ax = gca;
set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
plot(TSPAN,XOUTPlant(:,2),'g')
p = plot(t(2:end),XOUTopt(2:end-1,2),'g--');
set(p,'Marker','*')
l = legend('Plant','Estim');
set(l,'Location','SouthEast')
xlabel('tempo [s]')
ylabel('y [m]')

figure
ax = gca;
set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
plot(TSPAN,XOUTPlant(:,3),'b')
p = plot(t(2:end),XOUTopt(2:end-1,3),'b--');
set(p,'Marker','*')
l = legend('Plant','Estim');
set(l,'Location','SouthEast')
xlabel('tempo [s]')
ylabel('PSI [rad]')

figure
ax = gca;
set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
plot(TSPAN,XOUTPlant(:,4),'c')
p = plot(t(2:end),XOUTopt(2:end-1,4),'c--');
set(p,'Marker','*')
l = legend('Plant','Estim');
set(l,'Location','SouthEast')
xlabel('tempo [s]')
ylabel('vT [m/s]')

figure
ax = gca;
set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
plot(TSPAN,XOUTPlant(:,5),'m')
p = plot(t(2:end),XOUTopt(2:end-1,5),'m--');
set(p,'Marker','*')
l = legend('Plant','Estim');
set(l,'Location','SouthEast')
xlabel('tempo [s]')
ylabel('ALPHAT [rad/s]')

figure
ax = gca;
set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
plot(TSPAN,XOUTPlant(:,6),'k')
p = plot(t(2:end),XOUTopt(2:end-1,6),'k--');
set(p,'Marker','*')
l = legend('Plant','Estim');
set(l,'Location','SouthEast')
xlabel('tempo [s]')
ylabel('dPSI [rad/s]')

%%
% Cov. do erro

figure
ax = gca;
set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
p = plot(t(2:end),KKalmanopt(2:end-1),'r');
set(p,'Marker','*')
ylabel('ganho de kalman')
xlabel('tempo [s]')


%%
%

figure
ax = gca;
set(ax,'NextPlot','add','Box','on','XGrid','on','YGrid','on')
p = plot(t(2:end),Popt(2:end-1),'r');
set(p,'Marker','*')
p = plot(t(2:end),Pantes(2:end-1),'g');
set(p,'Marker','*')
l = legend('+','-');
set(l,'Location','NorthEast')
ylabel('cov. erro')
xlabel('tempo [s]')

%%
%
close all

%% Trajet�ria da estimativa
% Usando o simulatorPlant para inicializar o Graphics do Kalman

gKalman = Graphics(simulatorKalman);
gKalman.Simulator.TSpan     = t;
gKalman.Simulator.XT        = XOUTopt(1:end-1,1);
gKalman.Simulator.YT        = XOUTopt(1:end-1,2);
gKalman.Simulator.PSI       = XOUTopt(1:end-1,3);
gKalman.Simulator.VEL       = XOUTopt(1:end-1,4);
gKalman.Simulator.ALPHAT    = XOUTopt(1:end-1,5);
gKalman.Simulator.dPSI      = XOUTopt(1:end-1,6);
gKalman.TractorColor        = 'b';
gKalman.Frame()

%%
close all

%%
%
gPlant.Frame();
hold on
% gModel.Frame();
gKalman.Frame();

%% See Also
%
% <https://www.mathworks.com/matlabcentral/fileexchange/58683-vehicle-dynamics-lateral Home>
%
