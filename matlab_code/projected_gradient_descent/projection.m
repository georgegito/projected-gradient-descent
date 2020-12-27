function res = projection(temp)
   
    % if xk(1) out of X:
    if  temp(1)  < -20 
        
        temp(1) = -20;
        
    elseif temp(1) > 10 
            
            temp(1) = 10;
    end
    
    % if xk(2) out of X: 
    if  temp(2)  < -12 
        
        temp(2) = -12;
        
    elseif temp(2) > 15 
            
            temp(2) = 15;
    end 

    res = temp;
end