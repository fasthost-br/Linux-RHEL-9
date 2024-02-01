##
## ! [EN] The FastHost company (https://fasthost.com.br) gives all these guides free of charges.
## ! But we cant be responsable about any error and/or problem that the commands here can cause.
## ! Use it on your own risk.
## 
## ! [PT] A empresa FastHost (https://fasthost.com.br) disponibiliza este guia de forma gratuita.
## ! Não nos responsabilizamos por qualquer erro e/ou problema que os comandos possam acarretar.
## ! Use isto por sua conta e risco.
## 
## [EN] Title: Firewall Configuration Guide for AlmaLinux/Rockylinux/CentOS 9.x
## [PT] Título: Guia de Configuração do Firewall para AlmaLinux/Rockylinux/CentOS 9.x
##

## [EN] How to completly disable the Firewall.
## [PT] Como desativar completamente o Firewall.
systemctl stop firewalld
systemctl disable firewalld

## [EN] How to enable the Firewall.
## [PT] Como habilitar o Firewall.
systemctl start firewalld
systemctl enable firewalld

## [EN] How to open some port on Firewall. We will put a commented list here, pick what you want to open.
## [PT] Como abrir alguma porta no Firewall. Nós iremos deixar uma lista comentada, escolha o que deseja abrir.

## FTP
firewall-cmd --permanent --add-port=20/tcp      # 20    = FTP
firewall-cmd --permanent --add-port=21/tcp      # 21    = FTP

## SSH
firewall-cmd --permanent --add-port=22/tcp      # 22    = SSH (we will change it to 7858, than we block it)
firewall-cmd --permanent --add-port=7858/tcp    # 7858  = SSH (new)

## DNS
firewall-cmd --permanent --add-port=53/udp      # 53    = DNS (UDP)

## WEB
firewall-cmd --permanent --add-port=80/tcp      # 80    = HTTP
firewall-cmd --permanent --add-port=443/tcp     # 443   = HTTPS

## SMTP (MAIL)
firewall-cmd --permanent --add-port=25/tcp      # 25    = SMTP (many ISP block that port, consider to not use that on mail server).
firewall-cmd --permanent --add-port=465/tcp     # 465   = SMTP (works over an implicit SSL connection and if the server does not support it, the operation will be aborted).
firewall-cmd --permanent --add-port=587/tcp     # 587   = SMTP (this is the port IANA registered as the secure SMTP port, and it requires an explicit TLS connection).
firewall-cmd --permanent --add-port=2525/tcp    # 2525  = SMTP (alternative to the SMTP port 25, and can be encrypted over TLS).

## POP3 (MAIL)
firewall-cmd --permanent --add-port=110/tcp     # 110   = POP3 (default port which does not provide any encryption).
firewall-cmd --permanent --add-port=995/tcp     # 995   = POP3 (the encrypted port and works over TLS/SSL).

## IMAP (MAIL)
firewall-cmd --permanent --add-port=143/tcp     # 143   = IMAP (default port which does not provide any encryption).
firewall-cmd --permanent --add-port=993/tcp     # 993   = IMAP (the encrypted port and works over TLS/SSL).

## [EN] How to list all open ports on Firewall.
## [PT] Como listar todas as portas abertas no Firewall.
firewall-cmd --list-ports

## [EN] How to close some port on Firewall. [!!!] Change the PORT_NUMBER and PROTOCOL.
## [PT] Como fechar alguma porta no Firewall. [!!!] Altere o PORT_NUMBER e PROTOCOL.
firewall-cmd --permanent --remove-port=PORT_NUMBER/PROTOCOL

## [EN] How to reload all the Firewall changes.
## [PT] Como recarregar todas as alterações no Firewall.
firewall-cmd --reload

## [EN] How to use firewall as a tunnel connection between servers (as proxy).
## [PT] Como usar o firewall como uma ponte de conexão entre servidores (igual um proxy).
TODO

## [ALL] End.