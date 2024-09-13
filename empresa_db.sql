CREATE DATABASE empresa_db;
USE empresa_db;

CREATE USER 'funcionario'@'localhost' IDENTIFIED BY "123";
CREATE USER 'gerente'@'localhost' IDENTIFIED BY "321";
CREATE USER 'admin'@'localhost' IDENTIFIED BY "213";

GRANT SELECT ON empresa_db.* TO 'funcionario'@'localhost';
GRANT INSERT ON empresa_db.* TO 'gerente'@'localhost';
GRANT SELECT ON empresa_db.* TO 'gerente'@'localhost';
GRANT DELETE ON empresa_db.* TO	 'gerente'@'localhost';
GRANT ALL PRIVILEGES ON empresa_db.* TO 'admin'@'localhost';

revoke insert ON empresas_db.* from 'gerente'@'localhost';
rename user 'funcionario'@'localhost' to 'assistente'@'localhost';
alter user 'gerente'@'localhost' identified by 'nova_senha_gerente';
show grants;
drop user 'assistente'@'localhost';
