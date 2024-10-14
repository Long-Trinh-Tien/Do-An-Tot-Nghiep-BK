% Simscape(TM) Multibody(TM) version: 7.6

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(11).translation = [0.0 0.0 0.0];
smiData.RigidTransform(11).angle = 0.0;
smiData.RigidTransform(11).axis = [0.0 0.0 0.0];
smiData.RigidTransform(11).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 0 600];  % mm
smiData.RigidTransform(1).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(1).axis = [1 0 0];
smiData.RigidTransform(1).ID = "B[Rack-1:-:Rack housing-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-1.659827830735594e-11 1.0608403044898296e-11 552.72794246257547];  % mm
smiData.RigidTransform(2).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(2).axis = [1 0 0];
smiData.RigidTransform(2).ID = "F[Rack-1:-:Rack housing-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 0 0];  % mm
smiData.RigidTransform(3).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(3).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(3).ID = "B[Rack-1:-:pinion-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [290.53011898589705 -69.734684014296164 1.6541434888495132e-11];  % mm
smiData.RigidTransform(4).angle = 3.1415926535897878;  % rad
smiData.RigidTransform(4).axis = [0.57885593485587461 -0.81542982940418085 1.9637069748057456e-15];
smiData.RigidTransform(4).ID = "F[Rack-1:-:pinion-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 0 -70];  % mm
smiData.RigidTransform(5).angle = 0;  % rad
smiData.RigidTransform(5).axis = [0 0 0];
smiData.RigidTransform(5).ID = "B[pinion-1:-:Rack housing-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [70.000000000000114 29.999999999999432 250.00000000000009];  % mm
smiData.RigidTransform(6).angle = 2.0943951023931913;  % rad
smiData.RigidTransform(6).axis = [-0.57735026918962828 -0.57735026918962451 0.57735026918962451];
smiData.RigidTransform(6).ID = "F[pinion-1:-:Rack housing-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [0 0 700];  % mm
smiData.RigidTransform(7).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(7).axis = [1 0 0];
smiData.RigidTransform(7).ID = "B[Rod-2:-:Steering wheel-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [-3.4106051316484809e-13 -719.99999999999977 1.6768808563938364e-12];  % mm
smiData.RigidTransform(8).angle = 2.0943951023931966;  % rad
smiData.RigidTransform(8).axis = [-0.57735026918962618 -0.57735026918962595 -0.57735026918962518];
smiData.RigidTransform(8).ID = "F[Rod-2:-:Steering wheel-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [0 0 -70];  % mm
smiData.RigidTransform(9).angle = 0;  % rad
smiData.RigidTransform(9).axis = [0 0 0];
smiData.RigidTransform(9).ID = "B[pinion-1:-:Rod-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [1.1368683772161603e-13 -2.1316282072803006e-13 699.99999999999989];  % mm
smiData.RigidTransform(10).angle = 3.3422138886441671e-16;  % rad
smiData.RigidTransform(10).axis = [0.9394179301552803 0.34277390872522506 5.3810973114101883e-17];
smiData.RigidTransform(10).ID = "F[pinion-1:-:Rod-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [40.65973929948084 63.841378580693799 -86.609502153743279];  % mm
smiData.RigidTransform(11).angle = 0;  % rad
smiData.RigidTransform(11).axis = [0 0 0];
smiData.RigidTransform(11).ID = "RootGround[Rack housing-1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(5).mass = 0.0;
smiData.Solid(5).CoM = [0.0 0.0 0.0];
smiData.Solid(5).MoI = [0.0 0.0 0.0];
smiData.Solid(5).PoI = [0.0 0.0 0.0];
smiData.Solid(5).color = [0.0 0.0 0.0];
smiData.Solid(5).opacity = 0.0;
smiData.Solid(5).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.59936822143858393;  % kg
smiData.Solid(1).CoM = [-0.0018888663654336106 12.075998376376212 1.0949507468668283];  % mm
smiData.Solid(1).MoI = [6201.554069360137 12319.765424786014 6262.8207340628678];  % kg*mm^2
smiData.Solid(1).PoI = [9.6940320398553954 -0.0021636630278129149 -0.021035850005545979];  % kg*mm^2
smiData.Solid(1).color = [0.89803921568627454 0.89803921568627454 0.89803921568627454];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Steering wheel*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.15157959485303335;  % kg
smiData.Solid(2).CoM = [0 -0.01154062513964824 349.99550263639276];  % mm
smiData.Solid(2).MoI = [6187.7673760933003 6187.7866017623219 20.389552833274312];  % kg*mm^2
smiData.Solid(2).PoI = [0.0081712844498706243 0 0];  % kg*mm^2
smiData.Solid(2).color = [0.67137254901960786 0.67137254901960786 0.73725490196078436];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Rod*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.43070714770164853;  % kg
smiData.Solid(3).CoM = [0 -7.1454414052185298 300.31159667658085];  % mm
smiData.Solid(3).MoI = [12937.214027485228 12965.985882269246 60.950592585164316];  % kg*mm^2
smiData.Solid(3).PoI = [-1.2649210736271868 2.4399631153773487e-07 0];  % kg*mm^2
smiData.Solid(3).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "Rack*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.046536004482979045;  % kg
smiData.Solid(4).CoM = [-0.0089193110887047442 0.00021041370187624414 -7.0778490728593173];  % mm
smiData.Solid(4).MoI = [23.028456560412245 23.02411735409224 16.934451060724783];  % kg*mm^2
smiData.Solid(4).PoI = [0.00051820380400044474 -0.021966349598213558 -0.00010249898081917976];  % kg*mm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "pinion*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.81298135438880592;  % kg
smiData.Solid(5).CoM = [-0.23375037540254126 1.8778488470574406 249.99999999840648];  % mm
smiData.Solid(5).MoI = [16711.429633373664 16662.018835242859 612.69841145158546];  % kg*mm^2
smiData.Solid(5).PoI = [8.9377535879871636e-08 0.0003121386789134837 5.3423064609179214];  % kg*mm^2
smiData.Solid(5).color = [0.58352941176470585 0.54274509803921578 0.54274509803921578];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = "Rack housing*:*Default";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the CylindricalJoint structure array by filling in null values.
smiData.CylindricalJoint(2).Rz.Pos = 0.0;
smiData.CylindricalJoint(2).Pz.Pos = 0.0;
smiData.CylindricalJoint(2).ID = "";

smiData.CylindricalJoint(1).Rz.Pos = 0;  % deg
smiData.CylindricalJoint(1).Pz.Pos = 0;  % mm
smiData.CylindricalJoint(1).ID = "[Rack-1:-:Rack housing-1]";

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.CylindricalJoint(2).Rz.Pos = -109.25976927734837;  % deg
smiData.CylindricalJoint(2).Pz.Pos = 0;  % mm
smiData.CylindricalJoint(2).ID = "[pinion-1:-:Rack housing-1]";


%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(2).Rz.Pos = 0.0;
smiData.RevoluteJoint(2).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = -89.999999999999957;  % deg
smiData.RevoluteJoint(1).ID = "[Rod-2:-:Steering wheel-1]";

smiData.RevoluteJoint(2).Rz.Pos = 43.175146724166808;  % deg
smiData.RevoluteJoint(2).ID = "[pinion-1:-:Rod-2]";

