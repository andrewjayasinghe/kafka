ALTER USER 'root'@'localhost' IDENTIFIED BY 'password';
DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';
FLUSH PRIVILEGES;

CREATE USER backend;
ALTER USER 'backend'@'%' IDENTIFIED BY 'password';
CREATE DATABASE tutorials;
GRANT ALL PRIVILEGES ON tutorials.* TO 'backend'@'%';
FLUSH PRIVILEGES;