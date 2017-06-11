% Darle un valor a epsilon (cuidado si es muy chico)

epsilon1 = 0.1;
epsilon2 = 0.01;
epsilon3 = 0.0001;

% Darle un valor a la funcion my_mex del disparo
dni = 38524932;


% Llamamos al Montecarlo que tenemos que codear
for (i=1:1)
tic
[probabilidad, todas_las_probabilidades] = calcular_probabilidad(epsilon3,dni);
imprimir (todas_las_probabilidades,probabilidad,dni,epsilon3);
end
%Y = std(mean(todas_las_probabilidades(1:20)):mean(todas_las_probabilidades(end-20:end)));
y = todas_las_probabilidades(1:20);                     %valores de las primeras 20 iteraciones
z = todas_las_probabilidades(end-20:end);               %valores de las ultimas 20 iteraciones
%fprintf('Promedio = %d: \n', y);
fprintf('Promedio = %d: \n', z);



tiempo = toc

%[probabilidad, todas_las_probabilidades] = calcular_probabilidad_acierto(epsilon2, dni);
%imprimir (todas_las_probabilidades,probabilidad,dni,epsilon2);

%[probabilidad, todas_las_probabilidades] = calcular_probabilidad_acierto(epsilon3, dni);
%imprimir (todas_las_probabilidades,probabilidad,dni,epsilon3);


