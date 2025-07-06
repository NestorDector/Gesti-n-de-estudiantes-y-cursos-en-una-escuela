-- Inserts

-- Usar la base de datos creada
USE escuela_prueba;
GO

-- -----------------------------------------------------
-- Poblando tablas sin dependencias (o con dependencias de bajo nivel)
-- -----------------------------------------------------

-- 1. Departamento
INSERT INTO Departamento (depart_nom, depart_jefe, depart_presup) VALUES
('Direccion General', 'Juan Pérez', 50000.00),
('Docencia', 'Ana Gómez', 25000.00),
('Recursos Humanos', 'Carlos Solís', 75000.00),
('Finanzas', 'Luisa Torres', 30000.00),
('Tecnologías de la Información', 'Mario Vega', 40000.00),
('Mantenimiento y Servicios', 'Pedro Lara', 20000.00);
GO

-- 2. Usuario (Creando suficientes usuarios para Alumnos, Apoderados, Empleados y Admin)
INSERT INTO Usuario (usuar_id, usuar_pass, usuar_email, usuar_tel) VALUES
-- Administradores (1)
(1, 'adminpass123', 'admin@escuela.com', '9988-7766'),
-- Empleados (10)
(101, 'pass_jperez', 'jperez@escuela.com', '9876-5431'),
(102, 'pass_agomez', 'agomez@escuela.com', '9876-5432'),
(103, 'pass_csolis', 'csolis@escuela.com', '9876-5433'),
(104, 'pass_ltorres', 'ltorres@escuela.com', '9876-5434'),
(105, 'pass_mvega', 'mvega@escuela.com', '9876-5435'),
(106, 'pass_plara', 'plara@escuela.com', '9876-5436'),
(107, 'pass_rmartinez', 'rmartinez@escuela.com', '9876-5437'),
(108, 'pass_vcastro', 'vcastro@escuela.com', '9876-5438'),
(109, 'pass_flopez', 'flopez@escuela.com', '9876-5439'),
(110, 'pass_jrios', 'jrios@escuela.com', '9876-5440'),
-- Apoderados (6)
(201, 'apod_pass_1', 'carmen.soto@email.com', '8877-6651'),
(202, 'apod_pass_2', 'ricardo.luna@email.com', '8877-6652'),
(203, 'apod_pass_3', 'elena.morales@email.com', '8877-6653'),
(204, 'apod_pass_4', 'oscar.peña@email.com', '8877-6654'),
(205, 'apod_pass_5', 'beatriz.cruz@email.com', '8877-6655'),
(206, 'apod_pass_6', 'hector.rojas@email.com', '8877-6656'),
-- Alumnos (6)
(301, 'alu_pass_1', 'andres.soto@email.com', '3344-5561'),
(302, 'alu_pass_2', 'laura.luna@email.com', '3344-5562'),
(303, 'alu_pass_3', 'sofia.morales@email.com', '3344-5563'),
(304, 'alu_pass_4', 'martin.peña@email.com', '3344-5564'),
(305, 'alu_pass_5', 'lucia.cruz@email.com', '3344-5565'),
(306, 'alu_pass_6', 'diego.rojas@email.com', '3344-5566');
GO

-- 3. Periodo
INSERT INTO Periodo (perd_nom, perd_inicio, perd_final, perd_estado) VALUES
('Año Escolar 2024', '2024-02-01', '2024-11-30', 'Finalizado'),
('I Semestre 2024', '2024-02-01', '2024-06-30', 'Finalizado'),
('II Semestre 2024', '2024-08-01', '2024-11-30', 'Finalizado'),
('Año Escolar 2025', '2025-02-01', '2025-11-30', 'En curso'),
('I Semestre 2025', '2025-02-01', '2025-06-30', 'En curso'),
('II Semestre 2025', '2025-08-01', '2025-11-30', 'Próximo');
GO

-- 4. Aula
INSERT INTO Aula (aula_cod, aula_capac, aula_tam, aula_ubi, aula_desc) VALUES
('A-101', 30, 'Grande', 'Edificio A, Piso 1', 'Aula de primaria con proyector.'),
('B-201', 25, 'Mediana', 'Edificio B, Piso 2', 'Aula de secundaria.'),
('C-LAB1', 20, 'Mediana', 'Edificio C, Piso 1', 'Laboratorio de Ciencias.'),
('D-AUD', 100, 'Muy Grande', 'Edificio D, Central', 'Auditorio principal.'),
('A-102', 30, 'Grande', 'Edificio A, Piso 1', 'Aula de primaria con pizarra interactiva.'),
('C-LAB2', 20, 'Mediana', 'Edificio C, Piso 1', 'Laboratorio de Computación.');
GO

-- 5. Materia
INSERT INTO Materia (mat_nom, mat_cod, mat_desc, mat_credi, mat_tipo, mat_estado, mat_area) VALUES
('Matemáticas I', 'MAT-101', 'Álgebra y geometría básica.', 4, 'Obligatoria', 'Activo', 'Ciencias Exactas'),
('Ciencias Sociales', 'SOC-101', 'Historia y geografía de la región.', 3, 'Obligatoria', 'Activo', 'Ciencias Sociales'),
('Biología', 'BIO-101', 'Conceptos fundamentales de los seres vivos.', 4, 'Obligatoria', 'Activo', 'Ciencias Naturales'),
('Educación Física', 'EDF-101', 'Desarrollo de habilidades motrices.', 2, 'Obligatoria', 'Activo', 'Deportes'),
('Artes Plásticas', 'ART-101', 'Técnicas de dibujo y pintura.', 2, 'Electiva', 'Activo', 'Arte y Cultura'),
('Inglés Básico', 'ING-101', 'Introducción al idioma inglés.', 3, 'Obligatoria', 'Activo', 'Idiomas');
GO

-- 6. Grado
INSERT INTO Grado (grad_nom, grad_nivel, grad_esp, grad_jorda, grad_anio, grad_estad, grad_cod) VALUES
('Primer Grado', 'Primaria', 'General', 'Matutina', '2024-01-01', 'Activo', 'PRI-1'),
('Segundo Grado', 'Primaria', 'General', 'Matutina', '2024-01-01', 'Activo', 'PRI-2'),
('Séptimo Grado', 'Secundaria', 'General', 'Matutina', '2024-01-01', 'Activo', 'SEC-7'),
('Octavo Grado', 'Secundaria', 'General', 'Vespertina', '2024-01-01', 'Activo', 'SEC-8'),
('Décimo Grado', 'Secundaria', 'Ciencias y Humanidades', 'Matutina', '2024-01-01', 'Activo', 'SEC-10-CH'),
('Décimo Grado', 'Secundaria', 'Técnico en Informática', 'Matutina', '2024-01-01', 'Activo', 'SEC-10-TI');
GO

-- -----------------------------------------------------
-- Poblando tablas con dependencias
-- -----------------------------------------------------

-- 7. Administrador (depende de Usuario)
INSERT INTO Administrador (admin_estad, admin_nivel, admin_fecharegis, usuar_id) VALUES
(1, 1, '2022-01-15', 1);
GO

-- 8. Apoderado (depende de Usuario)
INSERT INTO Apoderado (apod_pnom, apod_pape, apod_dni, apod_dir, apod_tel, apod_sexo, apod_paren, apod_estciv, apod_email, apod_ocup, usuar_id) VALUES
('Carmen', 'Soto', '0801-1980-12345', 'Col. El Roble, Casa 10', '8877-6651', 'Femenino', 'Madre', 'Casada', 'carmen.soto@email.com', 'Contadora', 201),
('Ricardo', 'Luna', '0801-1978-54321', 'Res. La Florida, Bloque 5', '8877-6652', 'Masculino', 'Padre', 'Casado', 'ricardo.luna@email.com', 'Ingeniero', 202),
('Elena', 'Morales', '0502-1985-67890', 'Barrio El Centro, Av. 3', '8877-6653', 'Femenino', 'Madre', 'Soltera', 'elena.morales@email.com', 'Abogada', 203),
('Oscar', 'Peña', '0401-1982-09876', 'Col. Kennedy, Casa 20', '8877-6654', 'Masculino', 'Padre', 'Casado', 'oscar.peña@email.com', 'Doctor', 204),
('Beatriz', 'Cruz', '0301-1990-11223', 'Col. Las Palmas, Apto 3', '8877-6655', 'Femenino', 'Tía', 'Soltera', 'beatriz.cruz@email.com', 'Diseñadora', 205),
('Hector', 'Rojas', '0801-1975-33445', 'Res. Villa Olimpia, Casa 1', '8877-6656', 'Masculino', 'Padre', 'Divorciado', 'hector.rojas@email.com', 'Comerciante', 206);
GO

-- 9. Empleado (depende de Departamento, Usuario)
INSERT INTO Empleado (emp_pnom, emp_snom, emp_pape, emp_sape, emp_dni, emp_fnac, emp_tel, emp_email, emp_fcontra, emp_estad, emp_cargo, emp_tipocontr, emp_jorna, emp_exp, emp_nivel, depart_id, usuar_id) VALUES
('Juan', null, 'Pérez', 'García', '0801-1970-11111', '1970-05-20', '9876-5431', 'jperez@escuela.com', '2010-02-01', 'Activo', 'Director Académico', 'Permanente', 'Completa', '20 años', 'Postgrado', 1, 101),
('Ana', 'María', 'Gómez', 'López', '0801-1985-22222', '1985-08-15', '9876-5432', 'agomez@escuela.com', '2015-07-20', 'Activo', 'Jefe de RRHH', 'Permanente', 'Completa', '9 años', 'Licenciatura', 2, 102),
('Carlos', 'Alberto', 'Solís', 'Mendoza', '0801-1979-33333', '1979-01-30', '9876-5433', 'csolis@escuela.com', '2012-03-10', 'Activo', 'Contador General', 'Permanente', 'Completa', '12 años', 'Maestría', 3, 103),
('Rosa', null, 'Martínez', 'Salazar', '0501-1990-44444', '1990-11-25', '9876-5437', 'rmartinez@escuela.com', '2018-02-15', 'Activo', 'Docente', 'Permanente', 'Matutina', '6 años', 'Licenciatura', 1, 107),
('Victor', 'Hugo', 'Castro', 'Pineda', '0502-1988-55555', '1988-04-12', '9876-5438', 'vcastro@escuela.com', '2019-08-01', 'Activo', 'Docente', 'Permanente', 'Matutina', '5 años', 'Licenciatura', 1, 108),
('Fernanda', 'Isabel', 'López', 'Reyes', '0403-1992-66666', '1992-09-03', '9876-5439', 'flopez@escuela.com', '2020-02-10', 'Activo', 'Docente', 'Por Contrato', 'Vespertina', '4 años', 'Licenciatura', 1, 109),
('Jorge', 'Luis', 'Ríos', 'Valle', '0301-1982-77777', '1982-07-19', '9876-5440', 'jrios@escuela.com', '2017-01-20', 'Activo', 'Docente', 'Permanente', 'Matutina', '7 años', 'Maestría', 1, 110),
('Pedro', 'Antonio', 'Lara', 'Cruz', '0801-1980-88888', '1980-03-14', '9876-5436', 'plara@escuela.com', '2011-06-01', 'Activo', 'Jefe de Mantenimiento', 'Permanente', 'Completa', '13 años', 'Técnico', 6, 106);
GO

-- 10. Docente (depende de Empleado)
INSERT INTO Docente (doc_titulo, doc_especia, emp_id) VALUES
('Lic. en Pedagogía', 'Matemáticas', 4), -- Rosa Martínez
('Lic. en Biología', 'Ciencias Naturales', 5), -- Victor Castro
('Lic. en Letras', 'Ciencias Sociales', 6), -- Fernanda López
('Msc. en Historia', 'Ciencias Sociales', 7), -- Jorge Ríos
('Lic. en Educación Física', 'Deportes', 1), -- Juan Pérez (Ejemplo de director que también da clase)
('Lic. en Artes', 'Artes Plásticas', 2); -- Ana Gómez (Ejemplo de RRHH que también da clase)
GO

-- 11. Alumno (depende de Apoderado, Usuario)
INSERT INTO Alumno (alu_pnom, alu_snom, alu_pape, alu_sape, alu_fnac, alu_sexo, alu_dir, alu_dni, alu_fingr, alu_tsangr, alu_estado, alu_proced, apod_id, usuar_id) VALUES
('Andrés', 'David', 'Soto', null, '2015-03-10', 'Masculino', 'Col. El Roble, Casa 10', '0801-2015-00111', '2021-02-01', 'O+', 'Activo', 'Hogar', 1, 301),
('Laura', 'Sofía', 'Luna', null, '2014-06-22', 'Femenino', 'Res. La Florida, Bloque 5', '0801-2014-00222', '2020-02-01', 'A-', 'Activo', 'Otro Colegio', 2, 302),
('Sofía', 'Valentina', 'Morales', 'Paz', '2010-09-01', 'Femenino', 'Barrio El Centro, Av. 3', '0502-2010-00333', '2018-02-01', 'B+', 'Activo', 'Hogar', 3, 303),
('Martín', 'José', 'Peña', 'García', '2009-11-15', 'Masculino', 'Col. Kennedy, Casa 20', '0401-2009-00444', '2017-02-01', 'AB+', 'Activo', 'Otro Colegio', 4, 304),
('Lucía', 'Camila', 'Cruz', 'Mejía', '2007-02-20', 'Femenino', 'Col. Las Palmas, Apto 3', '0301-2007-00555', '2024-02-01', 'O-', 'Nuevo Ingreso', 'Otro Colegio', 5, 305),
('Diego', 'Alejandro', 'Rojas', 'Flores', '2007-05-30', 'Masculino', 'Res. Villa Olimpia, Casa 1', '0801-2007-00666', '2024-02-01', 'A+', 'Nuevo Ingreso', 'Otro Colegio', 6, 306);
GO

-- 12. rrhh (depende de Empleado)
INSERT INTO rrhh (emp_id, rrhh_cant_emp, rrhh_asigsal) VALUES
(2, 8, 1); -- Ana Gómez
GO

-- 13. Salario (depende de rrhh, Empleado)
INSERT INTO Salario (salar_monto, salar_fecha, salar_desc, rrhh_id, emp_id) VALUES
(45000.00, '2025-06-15', 'Pago Quincenal', 1, 1), -- Salario de Juan Pérez asignado por Ana Gómez
(25000.00, '2025-06-15', 'Pago Quincenal', 1, 2), -- Salario de Ana Gómez
(30000.00, '2025-06-15', 'Pago Quincenal', 1, 3), -- Salario de Carlos Solís
(18000.00, '2025-06-15', 'Pago Quincenal', 1, 4), -- Salario de Rosa Martínez
(18000.00, '2025-06-15', 'Pago Quincenal', 1, 5), -- Salario de Victor Castro
(16000.00, '2025-06-15', 'Pago Quincenal', 1, 6); -- Salario de Fernanda López
GO

-- 14. Matricula (depende de Alumno, Grado, Periodo)
-- Usando perd_id = 3 ('II Semestre 2024')
INSERT INTO Matricula (alu_id, grad_id, perd_id, matri_anio) VALUES
(1, 2, 5, '2025-02-01'), -- Andrés Soto en Segundo Grado
(2, 1, 5, '2025-02-01'), -- Laura Luna en Primer Grado
(3, 3, 5, '2025-02-01'), -- Sofía Morales en Séptimo Grado
(4, 4, 5, '2025-02-01'), -- Martín Peña en Octavo Grado
(5, 5, 5, '2025-02-01'), -- Lucía Cruz en Décimo (C y H)
(6, 6, 5, '2025-02-01'); -- Diego Rojas en Décimo (Informática)
GO

-- 15. Clase (depende de Materia, Aula, Docente)
INSERT INTO Clase (mat_id, aula_id, doc_id, clase_dia, seccion, periodo) VALUES --cambiar periodo por per_id
(1, 1, 1, 'L-V', 'A', 'I Semestre 2025'), -- Matematicas I en Aula A-101 por Rosa Martínez
(2, 2, 3, 'L-V', 'B', 'I Semestre 2025'), -- Sociales en Aula B-201 por Fernanda López
(3, 3, 2, 'L-V', 'A', 'I Semestre 2025'), -- Biología en Lab C-LAB1 por Victor Castro
(4, 4, 5, 'Mi y V', 'Unica', 'I Semestre 2025'), -- Ed. Fisica en Auditorio por Juan Pérez
(5, 5, 6, 'L-V', 'C', 'I Semestre 2025'), -- Artes en A-102 por Ana Gómez
(6, 6, 4, 'L-V', 'A', 'I Semestre 2025'), -- Inglés en Lab C-LAB2 por Jorge Ríos
(6, 6, 4, 'L-V', 'A', 'I Semestre 2024'); -- Inglés en Lab C-LAB2 por Jorge Ríos
GO

-- 16. HistorialMateria (depende de Materia, Periodo, Alumno, Clase)
INSERT INTO HistorialMateria (mat_id, perd_id, alu_id, clase_id, histmat_notaf, histmat_resul, histmat_obsrv) VALUES
(1, 5, 1, 1, null, 'En Curso', 'Inscrito en la clase de matemáticas'),
(1, 5, 2, 1, null, 'En Curso', 'Inscrito en la clase de matemáticas'),
(2, 5, 3, 2, null, 'En Curso', 'Inscrito en la clase de sociales'),
(2, 5, 4, 2, null, 'En Curso', 'Inscrito en la clase de sociales'),
(3, 5, 5, 3, null, 'En Curso', 'Inscrito en la clase de biología'),
(3, 5, 6, 3, null, 'En Curso', 'Inscrito en la clase de biología');
GO

-- 17. parcial (depende de HistorialMateria)
-- Usando datos del periodo anterior (I Semestre 2024, perd_id=2) para un ejemplo con notas ya puestas.
-- Primero, un historial de materia de un semestre anterior.
INSERT INTO HistorialMateria (mat_id, perd_id, alu_id, clase_id, histmat_notaf, histmat_resul, histmat_obsrv) VALUES
(6, 2, 1, 7, 88.50, 'Aprobado', 'Excelente desempeño');

--DECLARE @last_histmat_id INT = SCOPE_IDENTITY(); --esta linea sirve para jalar el ultimo histmat_id autogenerado, ya que a simple vista no se cual es. Alternativamente pongo 7, contando
-- Ahora los parciales de ese historial
INSERT INTO parcial (histmat_id, par_tipo, par_fecha, par_nota) VALUES
(7, 'I Parcial', '2024-03-15', 85.00),
(7, 'II Parcial', '2024-04-20', 90.00),
(7, 'III Parcial', '2024-05-25', 90.50),
(7, 'Examen Final', '2024-06-20', 88.00);
-- Y algunos registros mas
INSERT INTO parcial (histmat_id, par_tipo, par_fecha, par_nota) VALUES
(1, 'I Parcial', '2025-03-15', 90.00),
(2, 'I Parcial', '2025-04-15', 85.00);
GO

-- 18. HistorialAcademico (depende de Periodo, Grado, Alumno)
-- Ejemplo de historial del año anterior finalizado (perd_id=1, Año 2024)
INSERT INTO HistorialAcademico (perd_id, grad_id, alu_id, histac_resul, histac_promed) VALUES
(1, 1, 1, 'Aprobado', 92.50), -- Andrés en Primer Grado en 2024
(1, 1, 2, 'Aprobado', 88.00), -- Laura en Primer Grado en 2024
(1, 2, 3, 'Aprobado', 95.00), -- Sofía en Segundo Grado en 2024
(1, 3, 4, 'Aprobado', 85.75), -- Martín en Séptimo Grado en 2024
(1, 4, 5, 'Reprobado', 68.00), -- Lucia en Octavo Grado en 2024 (Ejemplo)
(1, 5, 6, 'Aprobado', 91.20); -- Diego en Décimo Grado en 2024




