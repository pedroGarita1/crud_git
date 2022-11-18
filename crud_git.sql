CREATE DATABASE crud_git;
USE crud_git;
CREATE TABLE crud_git.t_personas (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(245) NOT NULL,
  paterno VARCHAR(245) NOT NULL,
  materno VARCHAR(245) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  genero VARCHAR(45) NOT NULL,
  descripcion TEXT NOT NULL,
  created_at TIMESTAMP NULL,
  updated_at TIMESTAMP NULL,
  PRIMARY KEY (id));
