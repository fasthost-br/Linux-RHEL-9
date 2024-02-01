##
## ! [EN] The FastHost company (https://fasthost.com.br) gives all these guides free of charges.
## ! But we cant be responsable about any error and/or problem that the commands here can cause.
## ! Use it on your own risk.
## 
## ! [PT] A empresa FastHost (https://fasthost.com.br) disponibiliza este guia de forma gratuita.
## ! Não nos responsabilizamos por qualquer erro e/ou problema que os comandos possam acarretar.
## ! Use isto por sua conta e risco.
## 
## [EN] Title: SELinux Configuration Guide for AlmaLinux/Rockylinux/CentOS 9.x
## [PT] Título: Guia de Configuração do SELinux para AlmaLinux/Rockylinux/CentOS 9.x
##

## [EN] How to install the semanage command to manage the SELinux service.
## [PT] Como instalar o comando semanage para gerenciar as regras do SELinux.
yum install -y policycoreutils-python-utils

## [EN] How to completly disable the SELinux.
## [PT] Como desativar completamente o SELinux.
wget 
setenforce 0

## [EN] How to enable the SELinux.
## [PT] Como habilitar o SELinux.
setenforce 1

## [EN] How to free some service or port into SELinux policy.
## [PT] Como liberar algum serviço ou porta nas políticas do SELinux.
semanage port --add --type ssh_port_t --proto tcp 7858  # Add new SSH Port (7858) into SELinux to not get blocked when change.

## [EN] How to list all open ports on Firewall.
## [PT] Como listar todas as portas abertas no Firewall.
semanage port -l | grep ssh
semanage port -l | grep http

## [ALL] End.