
function convergio = converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_casos)

  if (total_de_casos > 60)
        if (abs(probabilidad_anterior - probabilidad_actual) < epsilon) 
          % Convergio!
          convergio = true;
        else
          % No convergio :(
          convergio = false;
        end
  else
      % No convergio :(
      convergio = false;
      
   end

end