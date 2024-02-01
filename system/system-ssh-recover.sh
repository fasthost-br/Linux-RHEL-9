##
## ! [EN] The FastHost company (https://fasthost.com.br) gives all these guides free of charges.
## ! But we cant be responsable about any error and/or problem that the commands here can cause.
## ! Use it on your own risk.
## 
## ! [PT] A empresa FastHost (https://fasthost.com.br) disponibiliza este guia de forma gratuita.
## ! Não nos responsabilizamos por qualquer erro e/ou problema que os comandos possam acarretar.
## ! Use isto por sua conta e risco.
## 
## [EN] Title: SSH Restore Guide for AlmaLinux/Rockylinux/CentOS 9.x
## [PT] Título: Guia de Recuperação do SSH para AlmaLinux/Rockylinux/CentOS 9.x
##

## [EN] How to revert all changes made here. 
## [PT] Como reverter todas as mudanças feitas aqui.
wget https://raw.githubusercontent.com/fasthost-br/Linux-RHEL-9/main/system/ssh/sshd_config.default -O /etc/ssh/sshd_config

## [EN] Open the new ports for SSH on Firewall, and close the other created before.
## [PT] Liberar a nova porta SSH no Firewall, e fecha a outra criada anteriormente.
firewall-cmd --permanent --remove-port=7858/tcp
firewall-cmd --permanent --add-port=22/tcp
firewall-cmd --reload

## [EN] Restart the service,
## [PT] Reinicia o serviço.
systemctl restart sshd

## [ALL] End.