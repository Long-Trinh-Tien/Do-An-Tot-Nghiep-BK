% Simscape(TM) Multibody(TM) version: 4.8

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(26).translation = [0.0 0.0 0.0];
smiData.RigidTransform(26).angle = 0.0;
smiData.RigidTransform(26).axis = [0.0 0.0 0.0];
smiData.RigidTransform(26).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 0 15];  % mm
smiData.RigidTransform(1).angle = 0;  % rad
smiData.RigidTransform(1).axis = [0 0 0];
smiData.RigidTransform(1).ID = 'B[Rack gear-1:-:spur gear_am-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [30.000000000000028 51.100604528041004 -45.978222022817235];  % mm
smiData.RigidTransform(2).angle = 2.8136608307902127;  % rad
smiData.RigidTransform(2).axis = [-0.69736140998493645 0.16545128505890336 -0.69736140998493656];
smiData.RigidTransform(2).ID = 'F[Rack gear-1:-:spur gear_am-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [-250.00000000000006 -7.0000000000000098 15];  % mm
smiData.RigidTransform(3).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(3).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(3).ID = 'B[Rack gear-1:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-314.03334040568495 0 0];  % mm
smiData.RigidTransform(4).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(4).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(4).ID = 'F[Rack gear-1:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 0 449.99999999999989];  % mm
smiData.RigidTransform(5).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(5).axis = [1 0 0];
smiData.RigidTransform(5).ID = 'B[Connecting Rod-1:-:U connector-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-5.5814727839553768e-13 -80.000000000000654 -1.3216094885137863e-12];  % mm
smiData.RigidTransform(6).angle = 2.0943951023931984;  % rad
smiData.RigidTransform(6).axis = [0.57735026918962673 -0.57735026918962484 0.57735026918962584];
smiData.RigidTransform(6).ID = 'F[Connecting Rod-1:-:U connector-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [50.000050799999983 0 0];  % mm
smiData.RigidTransform(7).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(7).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(7).ID = 'B[spur gear_am-1:-:U connector-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [3.3006583577410709e-14 -100.00005079999997 -5.6843418860808015e-14];  % mm
smiData.RigidTransform(8).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(8).axis = [-0.57735026918962551 -0.57735026918962606 -0.57735026918962562];
smiData.RigidTransform(8).ID = 'F[spur gear_am-1:-:U connector-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [0 -79.999999999999957 0];  % mm
smiData.RigidTransform(9).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(9).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(9).ID = 'B[U connector-3:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [-6.3314076204079583e-12 299.99999999999989 -938.21289247827656];  % mm
smiData.RigidTransform(10).angle = 2.5169261318690284;  % rad
smiData.RigidTransform(10).axis = [-2.9166683172636999e-17 -2.33333465381096e-16 -1];
smiData.RigidTransform(10).ID = 'F[U connector-3:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [0 0 30.000000000000028];  % mm
smiData.RigidTransform(11).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(11).axis = [1 0 0];
smiData.RigidTransform(11).ID = 'B[Steering Wheel-1:-:U connector-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [1.0296208330373702e-12 -80.000000000000014 -1.4495071809506044e-12];  % mm
smiData.RigidTransform(12).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(12).axis = [-0.57735026918962573 -0.57735026918962562 -0.57735026918962573];
smiData.RigidTransform(12).ID = 'F[Steering Wheel-1:-:U connector-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [0 0 449.99999999999989];  % mm
smiData.RigidTransform(13).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(13).axis = [1 0 0];
smiData.RigidTransform(13).ID = 'B[Connecting Rod-1:-:U connector-4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [-1.4513251711534281e-12 -530.00000000000068 -4.2064129956997931e-12];  % mm
smiData.RigidTransform(14).angle = 2.0943951023931962;  % rad
smiData.RigidTransform(14).axis = [-0.57735026918962595 -0.57735026918962562 -0.57735026918962562];
smiData.RigidTransform(14).ID = 'F[Connecting Rod-1:-:U connector-4]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [29.999999999999993 0 0];  % mm
smiData.RigidTransform(15).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(15).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(15).ID = 'B[spur gear_am-1:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [3.1477060541407198e-12 31.999999999999886 0];  % mm
smiData.RigidTransform(16).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(16).axis = [-0.52477597578483859 0.85124037453534274 -8.3266726846886741e-17];
smiData.RigidTransform(16).ID = 'F[spur gear_am-1:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [0 0 449.99999999999989];  % mm
smiData.RigidTransform(17).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(17).axis = [1 0 0];
smiData.RigidTransform(17).ID = 'B[Connecting Rod-1:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [5.5837973134131857e-12 82.247170695003405 -260.27526182596881];  % mm
smiData.RigidTransform(18).angle = 3.1114117051057311;  % rad
smiData.RigidTransform(18).axis = [-0.078173064220134647 0.97886559049085387 0.18897388122020056];
smiData.RigidTransform(18).ID = 'F[Connecting Rod-1:-:]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [0 0 35.000000000000014];  % mm
smiData.RigidTransform(19).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(19).axis = [1 0 0];
smiData.RigidTransform(19).ID = 'B[crosslinkage-1:-:U connector-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [34.99999999999882 54.987838622199931 -4.4053649617126212e-13];  % mm
smiData.RigidTransform(20).angle = 2.0943951023931948;  % rad
smiData.RigidTransform(20).axis = [-0.5773502691896264 -0.57735026918962562 0.5773502691896254];
smiData.RigidTransform(20).ID = 'F[crosslinkage-1:-:U connector-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(21).translation = [0 35 0];  % mm
smiData.RigidTransform(21).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(21).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(21).ID = 'B[crosslinkage-1:-:U connector-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(22).translation = [35.000000000000533 54.987838622198311 2.7071678232459817e-12];  % mm
smiData.RigidTransform(22).angle = 2.0943951023931944;  % rad
smiData.RigidTransform(22).axis = [-0.57735026918962673 -0.57735026918962529 0.57735026918962529];
smiData.RigidTransform(22).ID = 'F[crosslinkage-1:-:U connector-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(23).translation = [-80.000000000000043 54.987838622198247 0];  % mm
smiData.RigidTransform(23).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(23).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(23).ID = 'B[U connector-3:-:crosslinkage-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(24).translation = [2.6574298317427747e-12 6.8922645368729718e-12 -79.999999999999247];  % mm
smiData.RigidTransform(24).angle = 2.3636280550624909e-15;  % rad
smiData.RigidTransform(24).axis = [-0.27668275564270417 -0.96096131697897169 3.1422239801783139e-16];
smiData.RigidTransform(24).ID = 'F[U connector-3:-:crosslinkage-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(25).translation = [93.000000000000043 54.98783862219836 0];  % mm
smiData.RigidTransform(25).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(25).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(25).ID = 'B[U connector-4:-:crosslinkage-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(26).translation = [-4.1069370126933791e-12 93.000000000002331 1.624300693947589e-11];  % mm
smiData.RigidTransform(26).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(26).axis = [0.57735026918962584 -0.57735026918962595 0.57735026918962562];
smiData.RigidTransform(26).ID = 'F[U connector-4:-:crosslinkage-2]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(6).mass = 0.0;
smiData.Solid(6).CoM = [0.0 0.0 0.0];
smiData.Solid(6).MoI = [0.0 0.0 0.0];
smiData.Solid(6).PoI = [0.0 0.0 0.0];
smiData.Solid(6).color = [0.0 0.0 0.0];
smiData.Solid(6).opacity = 0.0;
smiData.Solid(6).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.69478473618994741;  % kg
smiData.Solid(1).CoM = [0 0 16.363168736835398];  % mm
smiData.Solid(1).MoI = [7186.4984170108301 7186.4984170108264 14284.61766519417];  % kg*mm^2
smiData.Solid(1).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(1).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'Steering Wheel*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.11813368481800844;  % kg
smiData.Solid(2).CoM = [0 0.74631998502621522 0];  % mm
smiData.Solid(2).MoI = [174.93121873242691 110.53745022529546 259.05548704975325];  % kg*mm^2
smiData.Solid(2).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(2).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'U connector*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.17392154715350597;  % kg
smiData.Solid(3).CoM = [0.051354033461193722 -1.0611476962539026 0];  % mm
smiData.Solid(3).MoI = [15.278125822538815 3637.8711932308797 3627.0610869803922];  % kg*mm^2
smiData.Solid(3).PoI = [0 0 -0.055102297895444609];  % kg*mm^2
smiData.Solid(3).color = [0.7803921568627451 0.76078431372549016 0.74117647058823533];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'Rack gear*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.22089323345553238;  % kg
smiData.Solid(4).CoM = [0 0 225.00000000000003];  % mm
smiData.Solid(4).MoI = [3736.201956493966 3736.201956493966 17.257283863713464];  % kg*mm^2
smiData.Solid(4).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'Connecting Rod*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.034365365526635896;  % kg
smiData.Solid(5).CoM = [0.00012755807746446708 -0.00015178672519491849 -0.00030701800205002757];  % mm
smiData.Solid(5).MoI = [18.350067862245584 12.525950092823617 12.526470745089515];  % kg*mm^2
smiData.Solid(5).PoI = [6.3501910327880948e-05 7.7228842520943338e-05 6.337864397814261e-05];  % kg*mm^2
smiData.Solid(5).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = 'crosslinkage*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.021690171825744578;  % kg
smiData.Solid(6).CoM = [15.000000000000005 0 0];  % mm
smiData.Solid(6).MoI = [6.1310349746641029 4.6922803742628973 4.6922803742628885];  % kg*mm^2
smiData.Solid(6).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(6).color = [0.77647058823529413 0.75686274509803919 0.73725490196078436];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = 'spur gear_am*:*Metric - Spur gear 2M 20T 20PA 30FW ---S20N75H50L25N';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the PrismaticJoint structure array by filling in null values.
smiData.PrismaticJoint(1).Pz.Pos = 0.0;
smiData.PrismaticJoint(1).ID = '';

smiData.PrismaticJoint(1).Pz.Pos = 0;  % m
smiData.PrismaticJoint(1).ID = '[Rack gear-1:-:]';


%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(8).Rz.Pos = 0.0;
smiData.RevoluteJoint(8).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = 34.748197959173837;  % deg
smiData.RevoluteJoint(1).ID = '[Connecting Rod-1:-:U connector-1]';

smiData.RevoluteJoint(2).Rz.Pos = -179.3732383819229;  % deg
smiData.RevoluteJoint(2).ID = '[spur gear_am-1:-:U connector-2]';

smiData.RevoluteJoint(3).Rz.Pos = -50.543649216385603;  % deg
smiData.RevoluteJoint(3).ID = '[Steering Wheel-1:-:U connector-3]';

smiData.RevoluteJoint(4).Rz.Pos = -118.70803757470564;  % deg
smiData.RevoluteJoint(4).ID = '[Connecting Rod-1:-:U connector-4]';

smiData.RevoluteJoint(5).Rz.Pos = -170.16314687318356;  % deg
smiData.RevoluteJoint(5).ID = '[crosslinkage-1:-:U connector-1]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.RevoluteJoint(6).Rz.Pos = -70.388054660137826;  % deg
smiData.RevoluteJoint(6).ID = '[crosslinkage-1:-:U connector-2]';

smiData.RevoluteJoint(7).Rz.Pos = 13.199996672123891;  % deg
smiData.RevoluteJoint(7).ID = '[U connector-3:-:crosslinkage-2]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.RevoluteJoint(8).Rz.Pos = -107.57423976031723;  % deg
smiData.RevoluteJoint(8).ID = '[U connector-4:-:crosslinkage-2]';

