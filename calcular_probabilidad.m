  
function [probabilidad, todas_las_probabilidades] = calcular_probabilidad_acierto(epsilon,dni)

      probabilidad_anterior = 0; 
      probabilidad_actual = 1;  
      casos_favorables = 0;
      total_de_intentos = 0;
      todas_las_probabilidades = [];

      while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_intentos)
            probabilidad_anterior = probabilidad_actual;
            if ( (my_mex_service(dni) == 0 ) && (my_mex_service(dni) == 0 ) ) 
                        casos_favorables = casos_favorables +1;
            end      
            total_de_intentos = total_de_intentos +1;
            probabilidad_actual = casos_favorables / total_de_intentos;    
            todas_las_probabilidades = cat(1, todas_las_probabilidades, probabilidad_actual);
      end
   probabilidad = probabilidad_actual   
end