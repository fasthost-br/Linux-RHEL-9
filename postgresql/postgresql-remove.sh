##
## ! [EN] The FastHost company (https://fasthost.com.br) gives all these guides free of charges.
## ! But we cant be responsable about any error and/or problem that the commands here can cause.
## ! Use it on your own risk.
## 
## ! [PT] A empresa FastHost (https://fasthost.com.br) disponibiliza este guia de forma gratuita.
## ! Não nos responsabilizamos por qualquer erro e/ou problema que os comandos possam acarretar.
## ! Use isto por sua conta e risco.
## 
## [EN] Title: PostgreSQL Uninstall Guide for AlmaLinux/Rockylinux/CentOS 9.x
## [PT] Título: Guia para Desinstalação do PostgreSQL para AlmaLinux/Rockylinux/CentOS 9.x
##
## [ALL] PostgreSQL version: 16.x (stable).
##

## [EN] Shutdown and disable the auto-init.
## [PT] Desliga e desabilita a auto-inicialização.
systemctl stop postgresql-16
systemctl disable postgresql-16

## [EN] Remove the package. [!!!] Please, check the dependencies that will be removed together.
## [PT] Remove o pacote. [!!!] Por favor, verifique as dependências que serão desinstaladas junto.
yum remove postgresql16 postgresql16-devel postgresql16-contrib
    ## [ALL] If you need to remove only the service package without dependencies, you will need to run one-by-one command, like:
    ## rpm -e --nodeps PACKAGE_NAME

## [EN] Remove all the logs and data folders.
## [PT] Remove todas as pastas de logs e data.
rm -rf /var/lib/pgsql
rm -rf /run/postgresql

## [EN] Remove the installed repository.
## [PT] Remove o repositório instalado.
rm -rf /etc/yum.repos.d/pgdg-redhat-all.repo

## [EN] Clean all cache files from yum command.
## [PT] Limpa todos os caches do comando yum.
yum clean all

## [ALL] End.