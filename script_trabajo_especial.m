epsilon1=0.1;
epsilon2=0.01;
epsilon3=0.001;
dni = 38524932;

tic

    [probabilidad, todas_las_probabilidades] = calcular_probabilidad(epsilon1, dni);
    DEU = std(mean(sum((todas_las_probabilidades(1:20)))):mean(sum((todas_las_probabilidades(end-20:end)))));
    %Imprimo por pantalla el resultado final de la probabilidad 
    fprintf('La probabilidad fue de: = %d: \n', probabilidad);
    fprintf(' 1. Desvio estandar entre las primeras 20 y las ultimas 20 es de: = %d: \n', DEU);

    [probabilidad, todas_las_probabilidades] = calcular_probabilidad(epsilon2, dni);
    DED = std(mean(sum((todas_las_probabilidades(1:20)))):mean(sum((todas_las_probabilidades(end-20:end)))));
    %Imprimo por pantalla el resultado final de la probabilidad 
    fprintf('La probabilidad fue de: = %d: \n', probabilidad);
    fprintf(' 2. Desvio estandar entre las primeras 20 y las ultimas 20 es de: = %d: \n', DED);

    [probabilidad, todas_las_probabilidades] = calcular_probabilidad(epsilon3, dni);
    DET = std(mean(sum((todas_las_probabilidades(1:20)))):mean(sum((todas_las_probabilidades(end-20:end)))));
    %Imprimo por pantalla el resultado final de la probabilidad 
    fprintf('La probabilidad fue de: = %d: \n', probabilidad);
    fprintf(' 3. Desvio estandar entre las primeras 20 y las ultimas 20 es de: = %d: \n', DET);

tiempo = toc;

fprintf(' El tiempo de ejecucion fue de = %d: \n', tiempo);




