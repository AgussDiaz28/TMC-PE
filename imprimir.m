function [] = imprimir(todas_las_probabilidades,probabilidad,dni,epsilon)
  
    

    figure, plot(todas_las_probabilidades);
    hold on
    xlabel('Numero de iteracion');
    ylabel('Probabilidad');
    ylim([0 1]);
    grid on;
    legend(strcat('Evolucion de la probabilidad: ', num2str(epsilon) ));
    
    
    
   
end