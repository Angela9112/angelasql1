CREATE DATABASE BD_EmpOrd;
GO
USE BD_EmpOrd;

CREATE TABLE Empleados(
ID INT PRIMARY KEY,
Nombre NVARCHAR(50),
Apellido NVARCHAR(50),
Edad INT,
Peso DECIMAL(5,2),
FechaNacimiento DATE
);

CREATE TABLE Ordenes (
ID INT PRIMARY KEY,
Detalle NVARCHAR(100),
ID_Emple INT,
FOREIGN KEY (ID_Emple) REFERENCES Empleados(ID)
);
INSERT INTO Empleados (ID, Nombre, Apellido, Edad, Peso, FechaNacimiento) VALUES (1,'Maritza','qq',30,45,'01/01/2000');
INSERT INTO Empleados values (2,'Carmen','qq',30,45,'01/01/2020');
INSERT INTO Empleados values (3, 'Santiago', 'Alzate', 30, 55, '04/08/1991');
INSERT INTO Empleados VALUES (4, 'Alejandro', 'Martinez', 20, 40, '04/04/1996');
INSERT INTO Empleados Values (5,'Jose', 'aa', 35, 55, '05/04/1980');
INSERT INTO Empleados Values (6,'Carlos', 'dd', 45, 65, '05/05/1980');
INSERT INTO Empleados Values (7,'Janna', 'xx', 20, 35, '06/06/1980');
INSERT INTO Empleados Values (8,'Sara', 'pp', 36, 60, '11/06/1980');
INSERT INTO Empleados (ID, Nombre, FechaNacimiento) VALUES(11,'Carla', '12/06/1980');
INSERT INTO Empleados Values (10,'Javier', 'dx', 75, 85, '05/06/1980')
INSERT INTO Empleados (ID, Nombre, FechaNacimiento) VALUES(11,'Carla', '12/06/1980');
INSERT INTO Empleados (ID, Nombre, Apellido, Edad, Peso, FechaNacimiento) VALUES (12,'Maritza',null,null,45,'01/01/2024')


select * from Empleados;