  
function [probabilidad, todas_las_probabilidades] = calcular_probabilidad(epsilon,dni)

      probabilidad_anterior = 0; 
      probabilidad_actual = 1;  
      casos_favorables = 0;
      total_de_casos = 0;
      todas_las_probabilidades = [];
      eventoA = 11;
      eventoB = 11;
        
        % Mientras el algoritmo no converge
       while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_casos)
           
              % La probabilidad anterior es la probabilidad actual
              probabilidad_anterior = probabilidad_actual;
              
              % ------------------------- realizo dos llamados a la funcion y los guardo en variables para luego compararlas
              eventoA = my_mex_service(dni);
              eventoB = my_mex_service(dni);
              %----------------------------------------------------------------------------------------------------------------
              
                  if ( ( eventoA == 0 ) && ( eventoB == 0 ) )                            %Este es mi caso exitoso
                              casos_favorables = casos_favorables +1;                    %como entre en mi caso exitoso aumento la variable
                          
                  end      
                  
              %aumento la cantidad de casos     
              total_de_casos = (total_de_casos + 1);   
              %calculo la probabilidad actual              
              probabilidad_actual = (casos_favorables / total_de_casos);   
              %guardo la probabilidad en el arreglo 
              todas_las_probabilidades = cat(1, todas_las_probabilidades, probabilidad_actual);     
        end
        
    %Devuelvo la el resultado de la probabilidad final
    probabilidad = probabilidad_actual;
    
    %llamo la funcion que dado el arreglo, imprime un grafico que representa como fue variando la probabilidad y muestra el resultado final, al que se llego.
    imprimir (todas_las_probabilidades,probabilidad,dni,epsilon);
      
end
