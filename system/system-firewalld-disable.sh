##
## ! [EN] The FastHost company (https://fasthost.com.br) gives all these guides free of charges.
## ! But we cant be responsable about any error and/or problem that the commands here can cause.
## ! Use it on your own risk.
## 
## ! [PT] A empresa FastHost (https://fasthost.com.br) disponibiliza este guia de forma gratuita.
## ! Não nos responsabilizamos por qualquer erro e/ou problema que os comandos possam acarretar.
## ! Use isto por sua conta e risco.
## 
## [EN] Title: Firewall Disabling for AlmaLinux/Rockylinux/CentOS 9.x
## [PT] Título: Desabilitando o Firewall para AlmaLinux/Rockylinux/CentOS 9.x
##

## [EN] I would just disable entire the Firewall if you run your server already behind some other Firewall, like from (Vultr, Linode and others).
## [PT] Eu somente desabilitaria o Firewall se você estiver rodando o servidor sobre um outro Firewall, como (Vultr, Linode e outros).

## [EN] How to completly disable the Firewall.
## [PT] Como desativar completamente o Firewall.
systemctl stop firewalld
systemctl disable firewalld

## [EN] Restart the server.
## [PT] Reinicie o servidor.
shutdown -r now

## [ALL] End.