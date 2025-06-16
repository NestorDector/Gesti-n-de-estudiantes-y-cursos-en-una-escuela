# Reglas de Negocio

## Reglas principales para la gestión de alumnos
- Un alumno se matricula en muchos grados(en diferentes años), y un grado puede tener muchos alumnos matriculados.(matricula de puente)
- Un alumno cursa muchas materias y una materia es cursada por muchos alumnos. (detalleMateria como puente)
- Un apoderado representa a un alumno y un alumno es representado por un apoderado.




## Reglas para la gestión de empleados
- Un empleado pertenece a un departamento. Un departamento contiene varios empleados. Un empleado puede ser un docente y un docente es un empleado.
- Un empleado puede ser un Director, Subdirector, Orientador, psicólogo, Técnico informático, encargado de laboratorio, encargado de recursos humanos, contador, técnico general, cocinero o guardia y estos a su ves son empleados.
- Un departamento puede ser Dirección general, Docencia, Orientación, Tecnología, Recursos Humanos, Finanzas, Mantenimiento, Cafetería y seguridad y a su vez cada uno es un departamento.


## Reglas para la gestión de clases
<!-- Un docente imparte muchas materias y una materia puede ser impartida por varios docentes. -->

<!--En un aula se imparten muchas materias y una materia es impartida en muchas aulas.(clase como tabla puente) -->
- Un docente imparte muchas materias en muchas aulas y una materia es impartida por muchos docentes en muchas aulas. (resolver relación ternaria en tabla clase)

## Reglas para la gestión de usuarios
- Un empleado, un alumno y un apoderado son un usuario. Un usuario puede ser un empleado, un alumno o un apoderado.
- Un usuario puede ser un administrador, y un administrador es un usuario.
## Reglas para la gestión de salarios
- Un encargado de recursos humanos asigna muchos salarios. Un salario es asignado por un encargado de recursos humanos.
- Un empleado recibe muchos salarios(mensualmente) y un/cada salario pertenece a un único empleado. 
<!--Un contador autoriza muchos salarios y cada salario es autorizado por un contador.-->

## Reglas para la gestión de pagos
- Un alumno realiza muchos pagos y cada pago es realizado por un alumno.
- Un contador registra los  pagos y cada pago es registrado por un contador.
- Un alumno tiene muchos estados de cuenta(a lo largo de los años) y un o cada estado de cuenta pertenece a un alumno.
- Un estado de cuenta contiene muchos pagos y cada pago se asocia a un estado de cuenta.