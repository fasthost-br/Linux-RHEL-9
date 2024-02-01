##
## ! [EN] The FastHost company (https://fasthost.com.br) gives all these guides free of charges.
## ! But we cant be responsable about any error and/or problem that the commands here can cause.
## ! Use it on your own risk.
## 
## ! [PT] A empresa FastHost (https://fasthost.com.br) disponibiliza este guia de forma gratuita.
## ! Não nos responsabilizamos por qualquer erro e/ou problema que os comandos possam acarretar.
## ! Use isto por sua conta e risco.
## 
## [EN] Title: SSH Configuration Guide for AlmaLinux/Rockylinux/CentOS 9.x
## [PT] Título: Guia de Configuração do SSH para AlmaLinux/Rockylinux/CentOS 9.x
##

## [EN] Open the new ports for SSH on Firewall.
## [PT] Liberar a nova porta SSH no Firewall.
firewall-cmd --permanent --add-port=7858/tcp
firewall-cmd --reload

## [EN] Open the new ports for SSH on SELinux.
## [PT] Liberar a nova porta SSH no SELinux.
semanage port --add --type ssh_port_t --proto tcp 7858

## [EN] First we will backup the current sshd_config file.
## [PT] Primeiro iremos criar um backup do arquivo de configuração atual.
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.backup

## [EN] How to configure the new SSH settings.
## [PT] Como configurar os novos parâmetros do SSH.
wget https://raw.githubusercontent.com/fasthost-br/Linux-RHEL-9/main/system/ssh/sshd_config -O /etc/ssh/sshd_config

## [EN] Restart the service,
## [PT] Reinicia o serviço.
systemctl restart sshd

## [ALL] End.