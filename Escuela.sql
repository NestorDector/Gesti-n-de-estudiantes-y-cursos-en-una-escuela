DROP DATABASE IF EXISTS escuela_prueba;
GO

CREATE DATABASE escuela_prueba;
GO

USE escuela_prueba;
GO



CREATE TABLE Empleado (
    emp_id INT PRIMARY KEY IDENTITY(1,1),
    emp_pnom VARCHAR(50) NOT NULL,
    emp_snom VARCHAR(50),
    emp_pape VARCHAR(50) NOT NULL,
    emp_sape VARCHAR(50),
    emp_dni VARCHAR(20) UNIQUE NOT NULL,
    emp_fnac DATE,
    emp_tel VARCHAR(20),
    emp_email VARCHAR(50),
    emp_fcontra DATE,
    emp_estad VARCHAR(20),
    emp_cargo VARCHAR(50),
    emp_tipocontr varchar(50),
    emp_jorna VARCHAR(50),
    emp_exp VARCHAR(50),
    emp_nivel VARCHAR(50),
    emp_obsrv TEXT
);
GO

CREATE TABLE Docente (
    doc_id INT PRIMARY KEY IDENTITY(1,1),
    doc_titulo VARCHAR(50),
    doc_especia VARCHAR(50),
    doc_obsrv TEXT,
    emp_id INT,
    FOREIGN KEY (emp_id) REFERENCES Empleado(emp_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
GO

CREATE TABLE Apoderado (
    apod_id INT PRIMARY KEY IDENTITY(1,1),
    apod_pnom VARCHAR(50) NOT NULL,
    apod_snom VARCHAR(50),
    apod_pape VARCHAR(50) NOT NULL,
    apod_sape VARCHAR(50),
    apod_dni VARCHAR(20) UNIQUE NOT NULL,
    apod_dir VARCHAR(50),
    apod_tel VARCHAR(20),
    apod_sexo VARCHAR(10),
    apod_paren VARCHAR(50),
    apod_estciv VARCHAR(50),
    apod_email VARCHAR(50),
    apod_ocup VARCHAR(50)
);
GO

CREATE TABLE Alumno (
    alu_id INT PRIMARY KEY IDENTITY(1,1),
    alu_pnom VARCHAR(50) NOT NULL,
    alu_snom VARCHAR(50),
    alu_pape VARCHAR(50) NOT NULL,
    alu_sape VARCHAR(50),
    alu_fnac DATE,
    alu_sexo VARCHAR(10),
    alu_dir VARCHAR(50),
    alu_dni VARCHAR(20) UNIQUE NOT NULL,
    alu_fingr DATE,
    alu_tsangr VARCHAR(10),
    alu_estado VARCHAR(20),
    alu_proced VARCHAR(50),
    apod_id INT,
    FOREIGN KEY (apod_id) REFERENCES Apoderado(apod_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
GO

CREATE TABLE Grado (
    grad_id INT PRIMARY KEY IDENTITY(1,1),
    grad_nom VARCHAR(50) NOT NULL,
    grad_nivel VARCHAR(50),
    grad_esp VARCHAR(50),
    grad_desc TEXT,
    grad_jorda VARCHAR(50),
    grad_anio DATE,
    grad_estad VARCHAR(20),
    grad_cod VARCHAR(20)
);
GO


CREATE TABLE Matricula (
    matri_id INT PRIMARY KEY IDENTITY(1,1),
    alu_id INT,
    grad_id INT,
    matri_anio DATE,
    FOREIGN KEY (alu_id) REFERENCES Alumno(alu_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (grad_id) REFERENCES Grado(grad_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
GO



CREATE TABLE Aula (
    aula_id INT PRIMARY KEY IDENTITY(1,1),
    aula_cod VARCHAR(20) NOT NULL,
    aula_capac INT,
    aula_tam VARCHAR(50),
    aula_ubi VARCHAR(50),
    aula_desc TEXT
);
GO


CREATE TABLE Materia (
    mat_id INT PRIMARY KEY IDENTITY(1,1),
    mat_nom VARCHAR(50) NOT NULL,
    mat_cod VARCHAR(20) NOT NULL,
    mat_desc TEXT,
    mat_credi INT,
    mat_tipo VARCHAR(50),
    mat_estado VARCHAR(20),
    mat_area VARCHAR(50)
);
GO


CREATE TABLE Clase (
    clase_id INT PRIMARY KEY IDENTITY(1,1),
    mat_id INT,
    aula_id INT,
    doc_id INT,
    clase_dia DATE,
    seccion VARCHAR(50),
    periodo VARCHAR(50),
    FOREIGN KEY (mat_id) REFERENCES Materia(mat_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (aula_id) REFERENCES Aula(aula_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (doc_id) REFERENCES Docente(doc_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
GO


CREATE TABLE DetalleMateria (
    detalle_id INT PRIMARY KEY IDENTITY(1,1),
    mat_id INT,
    alu_id INT,
    detalle_notaf DECIMAL(5,2),
    detalle_obsrv TEXT,
    deta_fech DATE,
    FOREIGN KEY (mat_id) REFERENCES Materia(mat_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (alu_id) REFERENCES Alumno(alu_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
