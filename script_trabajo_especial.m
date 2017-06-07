% Darle un valor a epsilon (cuidado si es muy chico)

epsilon1 = 0.1;
epsilon2 = 0.01;
epsilon3 = 0.001;

% Darle un valor a la funcion my_mex del disparo
dni = 38524932;


% Llamamos al Montecarlo que tenemos que codear

[probabilidad, todas_las_probabilidades] = calcular_probabilidad_acierto(epsilon3,dni);
imprimir (todas_las_probabilidades,probabilidad,dni,epsilon1);

%[probabilidad, todas_las_probabilidades] = calcular_probabilidad_acierto(epsilon2, dni);
%imprimir (todas_las_probabilidades,probabilidad,dni,epsilon2);

%[probabilidad, todas_las_probabilidades] = calcular_probabilidad_acierto(epsilon3, dni);
%imprimir (todas_las_probabilidades,probabilidad,dni,epsilon3);


