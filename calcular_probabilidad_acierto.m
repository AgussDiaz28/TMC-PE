  
function [probabilidad, todas_las_probabilidades] = calcular_probabilidad_acierto(epsilon,dni)

      probabilidad_anterior = 0; 
      probabilidad_actual = 1;  
      casos_favorables = 0;
      total_de_intentos = 0;
      todas_las_probabilidades = [];
      caso1 = 0;
      caso2 = 0;

      while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_intentos)
            probabilidad_anterior = probabilidad_actual;
            caso1 = my_mex_service(dni);
            caso2 = my_mex_service(dni);
            if ((caso1 == 0) &&( caso2 == 0)) 
                        casos_favorables = casos_favorables +1;
            end
            total_de_intentos = total_de_intentos + 1;
            probabilidad_actual = casos_favorables / total_de_intentos;    
            todas_las_probabilidades = cat(1, todas_las_probabilidades, probabilidad_actual);
      end
   probabilidad = probabilidad_actual   
end