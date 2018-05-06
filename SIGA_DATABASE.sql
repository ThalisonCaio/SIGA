DROP DATABASE IF EXISTS siga;
CREATE DATABASE siga;
USE siga;

CREATE TABLE usuario(
	id_u INT AUTO_INCREMENT PRIMARY KEY NOT NULL COMMENT 'CÓDIGO DO USUÁRIO',
	login_u   VARCHAR(30) NOT NULL COMMENT 'LOGIN DO USUÁRIO PARA ACESSO AO SISTEMA',
	senha_u   VARCHAR(30) NOT NULL COMMENT 'SENHA DO USUÁRIO PARA ACESSO AO SISTEMA'   	
);

CREATE TABLE aluno(
    id_a           INT AUTO_INCREMENT PRIMARY KEY NOT NULL COMMENT 'CÓDIGO DA PESSOA',
    nome_a           VARCHAR(70) NOT NULL COMMENT 'NOME DA PESSOA',
    sexo_a           CHAR(1) NOT NULL COMMENT 'INFORMAR M OU F',
    data_cadastro         DATETIME NOT NULL COMMENT 'DATA DE CADASTRO DO REGISTRO',
    email_a	          VARCHAR(80) NOT NULL COMMENT 'EMAIL DA PESSOA',
    endereco           VARCHAR(200) NOT NULL COMMENT 'DESCRIÇÃO DO ENDEREÇO',
    origemCadastro      CHAR(1) NOT NULL COMMENT 'ORIGEM DO CADASTRO (I) = INPUT OU (X) = XML',	
    id_usuario_cadastro	   INT NOT NULL COMMENT  'USUÁRIO LOGADO QUE CADASTROU A PESSOA',
    FOREIGN KEY (id_usuario_cadastro) REFERENCES usuario(id_u)
);

INSERT INTO usuario (login_u, senha_u) VALUES('admin','admin');

-- SHOW FULL COLUMNS FROM aluno;