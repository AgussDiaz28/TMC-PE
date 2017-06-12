function [] = imprimir(todas_las_probabilidades,probabilidad,dni,epsilon)
  
    %Imprimo por pantalla el resultado final de la probabilidad 
    fprintf('La probabilidad fue de: = %d: \n', probabilidad); 

    figure, plot(todas_las_probabilidades);
    hold on
    xlabel('Numero de iteracion');
    ylabel('Probabilidad');
    ylim([0 1]);
    grid on;
    legend(strcat('Evolucion de la probabilidad: ', num2str(epsilon) ));
    
    
    
   
end