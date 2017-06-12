epsilon1=0.1;
epsilon2=0.01;
epsilon3=0.001;
dni = 38524932;

tic
[probabilidad, todas_las_probabilidades] = calcular_probabilidad(epsilon1, dni);

%Y = std(mean(sum((todas_las_probabilidades(1:20)))):mean(sum((todas_las_probabilidades(end-20:end)))));
%fprintf('Desvio estandar entre las primeras 20 y las ultimas 20 = %d: \n', Y);

tiempo = toc;

%fprintf('El tiempo de ejecucion fue de = %d: \n', tiempo);

%[probabilidad, todas_las_probabilidades] = calcular_probabilidad(epsilon2, dni);

%[probabilidad, todas_las_probabilidades] = calcular_probabilidad(epsilon3, dni);


