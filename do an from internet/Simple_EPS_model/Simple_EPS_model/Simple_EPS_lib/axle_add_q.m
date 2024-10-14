    function axle_add_q(blk,blk2,sgn,pos)
    
        msk_blk = get_param(gcb,'Blocks');
        ck = sum(strcmp(msk_blk,blk));
        
        pos_b=get_param([gcb '/Left Rack'],'Position');
        
        if pos == 'x'
            pos_o=2;
        elseif pos =='y'
            pos_o=1;
        elseif pos =='z'
            pos_o=0;
        end
        
    if strcmp('CP',blk)
        if ck ==0
            add_block('nesl_utility/Connection Port', [gcb '/CP']);
            add_line(gcb,'CP/RConn1','Left Rack/RConn1');
            set_param([gcb '/CP'],'Position',[350 330 370 350]);
            set_param([gcb '/' blk],'Port','10');
            set_param([gcb '/' blk],'Side','Left');
            
        end
        
    else 
        
      if ck ==0 && sgn == '+'

           add_block('nesl_utility/Connection Port', [gcb '/' blk]);
           set_param([gcb '/' blk],'Position',[pos_b(1)+350 pos_b(2)-120-pos_o*60 pos_b(1)+380 pos_b(2)-106-pos_o*60]);
           set_param([gcb '/' blk],'Orientation','left');
           
           add_block('sm_lib/Frames and Transforms/Rigid Transform', [gcb '/' blk2]);
           set_param([gcb '/' blk2],'Position',[pos_b(1)+240 pos_b(2)-135-pos_o*60 pos_b(1)+280 pos_b(2)-95-pos_o*60]);
           
           if pos =='x'
               set_param([gcb '/' blk2],'MaskValueString','RigidTransform|StandardAxis|mm|+X|rd|[0 0 0]|0|m|0|m|0|deg|None|deg|+Z|0|[0 0 1]|+X|+Y|+Y|+Z|simmechanics.library.frames_transforms.rigid_transform');
               set_param([gcb '/' blk],'Port','1');
               set_param([gcb '/' blk],'Side','Right');
               
               
               
           elseif pos =='y'
               set_param([gcb '/' blk2],'MaskValueString','RigidTransform|StandardAxis|mm|+Y|rd|[0 0 0]|0|m|0|m|0|deg|None|deg|+Z|0|[0 0 1]|+X|+Y|+Y|+Z|simmechanics.library.frames_transforms.rigid_transform');
                       
                       if sum(strcmp(msk_blk,'+X'))==1
                        ckp=get_param([gcb '/+X'],'Port');
                        ckp=str2num(ckp)+1;
                        set_param([gcb '/' blk],'Port',num2str(ckp));
                       elseif  sum(strcmp(msk_blk,'+Z'))==1
                        ckp=get_param([gcb '/+Z'],'Port');
                        ckp=str2num(ckp)-1;
                        set_param([gcb '/' blk],'Port',num2str(ckp));
                       end               
               
               set_param([gcb '/' blk],'Side','Right');

               
           elseif pos =='z'
               set_param([gcb '/' blk2],'MaskValueString','RigidTransform|StandardAxis|mm|+Z|rd|[0 0 0]|0|m|0|m|0|deg|None|deg|+Z|0|[0 0 1]|+X|+Y|+Y|+Z|simmechanics.library.frames_transforms.rigid_transform');

                       if sum(strcmp(msk_blk,'+Y'))==1
                        ckp=get_param([gcb '/+Y'],'Port');
                        ckp=str2num(ckp)+1;
                        set_param([gcb '/' blk],'Port',num2str(ckp));
                       elseif  sum(strcmp(msk_blk,'+X'))==1
                        ckp=get_param([gcb '/+X'],'Port');
                        ckp=str2num(ckp)+1;
                        set_param([gcb '/' blk],'Port',num2str(ckp));
                       end                  
               
               set_param([gcb '/' blk],'Side','Right');
                              
           end
                          
           add_line(gcb,[blk '/RConn1'],[blk2 '/RConn1'], 'autorouting','on');
           add_line(gcb,[blk2 '/LConn1'],'Left Rack/RConn1', 'autorouting','on');
           
        elseif ck == 0 && sgn == '-'
           add_block('nesl_utility/Connection Port', [gcb '/' blk]);
           set_param([gcb '/' blk],'Position',[pos_b(1)-350 pos_b(2)-120-pos_o*60 pos_b(1)-320 pos_b(2)-106-pos_o*60]);
           
           add_block('sm_lib/Frames and Transforms/Rigid Transform', [gcb '/' blk2]);
           set_param([gcb '/' blk2],'Position',[pos_b(1)-240 pos_b(2)-135-pos_o*60 pos_b(1)-200 pos_b(2)-95-pos_o*60]);           
           set_param([gcb '/' blk2],'Orientation','left');
           
           if pos =='x'
               set_param([gcb '/' blk2],'MaskValueString','RigidTransform|StandardAxis|mm|-X|rd|[0 0 0]|0|m|0|m|0|deg|None|deg|+Z|0|[0 0 1]|+X|+Y|+Y|+Z|simmechanics.library.frames_transforms.rigid_transform');
               set_param([gcb '/' blk],'Port','1');
               set_param([gcb '/' blk],'Side','Left');
               
               
           elseif pos =='y'
               set_param([gcb '/' blk2],'MaskValueString','RigidTransform|StandardAxis|mm|-Y|rd|[0 0 0]|0|m|0|m|0|deg|None|deg|+Z|0|[0 0 1]|+X|+Y|+Y|+Z|simmechanics.library.frames_transforms.rigid_transform');
                       if sum(strcmp(msk_blk,'-X'))==1
                        ckp=get_param([gcb '/-X'],'Port');
                        ckp=str2num(ckp)+1;
                        set_param([gcb '/' blk],'Port',num2str(ckp));
                       elseif  sum(strcmp(msk_blk,'-Z'))==1
                        ckp=get_param([gcb '/-Z'],'Port');
                        ckp=str2num(ckp)-1;
                        set_param([gcb '/' blk],'Port',num2str(ckp));
                       end
                             
                set_param([gcb '/' blk],'Side','Left');
               
               
           elseif pos =='z'
               set_param([gcb '/' blk2],'MaskValueString','RigidTransform|StandardAxis|mm|-Z|rd|[0 0 0]|0|m|0|m|0|deg|None|deg|+Z|0|[0 0 1]|+X|+Y|+Y|+Z|simmechanics.library.frames_transforms.rigid_transform');
               
                       if sum(strcmp(msk_blk,'-Y'))==1
                        ckp=get_param([gcb '/-Y'],'Port');
                        ckp=str2num(ckp)+1;
                        set_param([gcb '/' blk],'Port',num2str(ckp));
                       elseif  sum(strcmp(msk_blk,'-X'))==1
                        ckp=get_param([gcb '/-X'],'Port');
                        ckp=str2num(ckp)+1;
                        set_param([gcb '/' blk],'Port',num2str(ckp));
                       end                 
               
               set_param([gcb '/' blk],'Side','Left');           
               
           end
           
           add_line(gcb,[blk '/RConn1'],[blk2 '/RConn1'], 'autorouting','on');
           add_line(gcb,[blk2 '/LConn1'],'Left Rack/RConn1', 'autorouting','on');
          
      end
    end
       
    end
    
    
    % Copyright 2014 The MathWorks, Inc.
    