##
## ! [EN] The FastHost company (https://fasthost.com.br) gives all these guides free of charges.
## ! But we cant be responsable about any error and/or problem that the commands here can cause.
## ! Use it on your own risk.
## 
## ! [PT] A empresa FastHost (https://fasthost.com.br) disponibiliza este guia de forma gratuita.
## ! Não nos responsabilizamos por qualquer erro e/ou problema que os comandos possam acarretar.
## ! Use isto por sua conta e risco.
## 
## [EN] Title: MongoDB Installation Guide for AlmaLinux/Rockylinux/CentOS 9.x
## [PT] Título: Guia para Instalação do MongoDB para AlmaLinux/Rockylinux/CentOS 9.x
##
## [ALL] MongoDB version: 7.x (stable).
##

## [EN] Create the new official repository for download.
## [PT] Cria o novo repositório oficial para download.
wget https://raw.githubusercontent.com/fasthost-br/Linux-RHEL-9/main/mongodb/mongodb.repo -O /etc/yum.repos.d/mongodb.repo

## [EN] Clean all cache files from yum command.
## [PT] Limpa todos os caches do comando yum.
yum clean all

## [EN] Install the package.
## [PT] Instala o pacote.
yum install -y mongodb-org

## [EN] Start and enable the auto-startup. Default port: 27017.
## [PT] Inicia e habilita a auto-inicialização. Porta padrão: 27017.
systemctl start mongod
systemctl enable mongod

## [ALL] End.