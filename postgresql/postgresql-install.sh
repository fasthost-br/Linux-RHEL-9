##
## ! [EN] The FastHost company (https://fasthost.com.br) gives all these guides free of charges.
## ! But we cant be responsable about any error and/or problem that the commands here can cause.
## ! Use it on your own risk.
## 
## ! [PT] A empresa FastHost (https://fasthost.com.br) disponibiliza este guia de forma gratuita.
## ! Não nos responsabilizamos por qualquer erro e/ou problema que os comandos possam acarretar.
## ! Use isto por sua conta e risco.
## 
## [EN] Title: PostgreSQL Installation Guide for AlmaLinux/Rockylinux/CentOS 9.x
## [PT] Título: Guia para Instalação do PostgreSQL para AlmaLinux/Rockylinux/CentOS 9.x
##
## [ALL] PostgreSQL version: 16.x (stable).
##

## [EN] Install the yum-utils for yum command.
## [PT] Instala o pacote yum-utils para o comando yum.
yum install -y yum-utils

## [EN] Enable the CRB repository (dependencies here) (old PowerTools)
## [PT] Habilita o repositório CRB (depêndencias aqui) (antigo PowerTools)
yum config-manager --set-enabled crb

## [EN] Create the new official repository for download.
## [PT] Cria o novo repositório oficial para download.
yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-9-x86_64/pgdg-redhat-repo-latest.noarch.rpm

## [EN] Clean all cache files from yum command.
## [PT] Limpa todos os caches do comando yum.
yum clean all

## [EN] Disable the built-in PostgreSQL module.
## [PT] Desabilita o módulo padrão do PostgreSQL.
yum -qy module disable postgresql

## [EN] Install the package.
## [PT] Instala o pacote.
yum install -y postgresql16-server postgresql16-devel postgresql16-contrib

## [EN] Init the database.
## [PT] Inicializa o banco de dados.
/usr/pgsql-16/bin/postgresql-16-setup initdb

## [EN] Start and enable the auto-startup. Default port: 80 (HTTP) 443 (HTTPS).
## [PT] Inicia e habilita a auto-inicialização. Porta padrão: 80 (HTTP) e 443 (HTTPS).
systemctl start postgresql-16
systemctl enable postgresql-16

## [ALL] End.