##
## ! [EN] The FastHost company (https://fasthost.com.br) gives all these guides free of charges.
## ! But we cant be responsable about any error and/or problem that the commands here can cause.
## ! Use it on your own risk.
## 
## ! [PT] A empresa FastHost (https://fasthost.com.br) disponibiliza este guia de forma gratuita.
## ! Não nos responsabilizamos por qualquer erro e/ou problema que os comandos possam acarretar.
## ! Use isto por sua conta e risco.
## 
## [EN] Title: SELinux Disabling for AlmaLinux/Rockylinux/CentOS 9.x
## [PT] Título: Desabilitando o SELinux para AlmaLinux/Rockylinux/CentOS 9.x
##

## [EN] How to completly disable the SELinux.
## [PT] Como desativar completamente o SELinux.
wget https://raw.githubusercontent.com/fasthost-br/Linux-RHEL-9/main/system/selinux/config.disabled -O /etc/selinux/config

## [EN] Restart the server.
## [PT] Reinicie o servidor.
shutdown -r now

## [ALL] End.