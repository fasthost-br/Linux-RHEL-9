##
## ! [EN] The FastHost company (https://fasthost.com.br) gives all these guides free of charges.
## ! But we cant be responsable about any error and/or problem that the commands here can cause.
## ! Use it on your own risk.
## 
## ! [PT] A empresa FastHost (https://fasthost.com.br) disponibiliza este guia de forma gratuita.
## ! Não nos responsabilizamos por qualquer erro e/ou problema que os comandos possam acarretar.
## ! Use isto por sua conta e risco.
## 
## [EN] Title: Nginx Uninstall Guide for AlmaLinux/Rockylinux/CentOS 9.x
## [PT] Título: Guia para Desinstalação do Nginx para AlmaLinux/Rockylinux/CentOS 9.x
##
## [ALL] Nginx version: 1.24.x (stable).
##

## [EN] Shutdown and disable the auto-init.
## [PT] Desliga e desabilita a auto-inicialização.
systemctl stop nginx
systemctl disable nginx

## [EN] Remove the package. [!!!] Please, check the dependencies that will be removed together.
## [PT] Remove o pacote. [!!!] Por favor, verifique as dependências que serão desinstaladas junto.
yum remove nginx
    ## [ALL] If you need to remove only the service package without dependencies, you will need to run one-by-one command, like:
    ## rpm -e --nodeps PACKAGE_NAME

## [EN] Remove all the logs and data folders.
## [PT] Remove todas as pastas de logs e data.
rm -rf /etc/nginx
rm -rf /var/log/nginx

## [EN] Remove the installed repository.
## [PT] Remove o repositório instalado.
rm -rf /etc/yum.repos.d/nginx.repo

## [EN] Clean all cache files from yum command.
## [PT] Limpa todos os caches do comando yum.
yum clean all

## [ALL] End.