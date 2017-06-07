
function [probabilidad, todas_las_probabilidades] = calcular_probabilidad_acierto(espacio, epsilon, radio_disparo)

  probabilidad_anterior = 0; 
  probabilidad_actual = 1;  
  casos_favorables = 0;
  total_de_intentos = 0;
  todas_las_probabilidades = [];
  fav = 0;

      while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_intentos)
        probabilidad_anterior = probabilidad_actual;
          if my_mex_service(38524932) = 1
            fav = fav + 1;
            if (fav = 2)
              casos_favorables = casos_favorables +1;
              fav = 0; %--- cada dos sucesos favorable
          else{fav = 0};
        total_de_intentos = total_de_intentos +1;
        probabilidad_actual = casos_favorables / total_de_intentos;    
        todas_las_probabilidades = cat(1, todas_las_probabilidades, probabilidad_actual);
      end;    
end;