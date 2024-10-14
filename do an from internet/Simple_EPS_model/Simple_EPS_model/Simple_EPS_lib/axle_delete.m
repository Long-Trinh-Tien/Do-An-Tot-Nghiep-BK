function axle_delete(blk,blk2)
           msk_blk = get_param(gcb,'Blocks');
           ck = sum(strcmp(msk_blk,blk));

        if ck == 1
          if strcmp('CP',blk)
           delete_block([gcb '/' blk]); 
          
          else    
              
           delete_block([gcb '/' blk2])
           delete_block([gcb '/' blk])
          end
          
           l_h = get_param(gcb,'Lines');
           n=size([l_h.Handle],2); 
            
           for i=1:n
              if (sum(l_h(i).SrcBlock) == -1) || (sum(l_h(i).SrcBlock) == -1)
               delete_line(l_h(i).Handle);
              end
           end           
           
        end
end


% Copyright 2014 The MathWorks, Inc.