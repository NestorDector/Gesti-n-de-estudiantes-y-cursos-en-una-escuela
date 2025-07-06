USE escuela_prueba;
SELECT * FROM Departamento;
SELECT * FROM Empleado;
SELECT * FROM Docente;
SELECT * FROM Apoderado;
SELECT * FROM Alumno;
SELECT * FROM Grado;
SELECT * FROM Matricula;
SELECT * FROM Aula;
SELECT * FROM Materia;
SELECT * FROM Clase;
SELECT * FROM HistorialMateria;
SELECT * FROM parcial;
SELECT * FROM Periodo;
SELECT * FROM HistorialAcademico;
SELECT * FROM rrhh;
SELECT * FROM Salario;
SELECT * FROM Usuario;
SELECT * FROM Administrador;



USE escuela_prueba;
SELECT * FROM Usuario WHERE usuar_id = 108;
DELETE FROM Usuario WHERE usuar_id = 108;
SELECT * FROM Usuario;

USE escuela_prueba;
SELECT * FROM Empleado WHERE emp_id = 1;

UPDATE Empleado
SET emp_tel = '9876-5432'
WHERE emp_id = 1;
SELECT * FROM Empleado WHERE emp_id = 1;


-- JOINS
USE escuela_prueba;
SELECT
    t.name AS NombreTabla,
    p.rows AS CantidadDeRegistros
FROM
    sys.tables t
INNER JOIN
    sys.indexes i ON t.object_id = i.object_id
INNER JOIN
    sys.partitions p ON i.object_id = p.object_id AND i.index_id = p.index_id
WHERE
    i.index_id <= 1
    AND t.is_ms_shipped = 0
ORDER BY
    t.name;