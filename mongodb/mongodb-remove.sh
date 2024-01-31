##
## ! [EN] The FastHost company (https://fasthost.com.br) gives all these guides free of charges.
## ! But we cant be responsable about any error and/or problem that the commands here can cause.
## ! Use it on your own risk.
## 
## ! [PT] A empresa FastHost (https://fasthost.com.br) disponibiliza este guia de forma gratuita.
## ! Não nos responsabilizamos por qualquer erro e/ou problema que os comandos possam acarretar.
## ! Use isto por sua conta e risco.
## 
## [EN] Title: MongoDB Uninstall Guide for AlmaLinux/Rockylinux/CentOS 9.x
## [PT] Título: Guia para Desinstalação do Servidor MongoDB para AlmaLinux/Rockylinux/CentOS 9.x
##
## [ALL] MongoDB version: 7.x (stable)
##

## [EN] Shutdown and disable the auto-init.
## [PT] Desliga e desabilita a auto-inicialização.
systemctl stop mongod
systemctl disable mongod

## [EN] Remove all the logs and data folders.
## [PT] Remove todas as pastas de logs e data.
rm -rf /var/lib/mongo /var/log/mongodb

## [EN] Remove the sock file (if exist).
## [PT] Remove o arquivo sock (se existir).
rm -rf /tmp/mongodb-27017.sock

## [EN] Remove the package. [!!!] Please, check the dependencies that will be removed together.
## [PT] Remove o pacote. [!!!] Por favor, verifique as dependências que serão desinstaladas junto.
yum remove -y mongodb-org

## [ALL] End