##
## ! [EN] The FastHost company (https://fasthost.com.br) gives all these guides free of charges.
## ! But we cant be responsable about any error and/or problem that the commands here can cause.
## ! Use it on your own risk.
## 
## ! [PT] A empresa FastHost (https://fasthost.com.br) disponibiliza este guia de forma gratuita.
## ! Não nos responsabilizamos por qualquer erro e/ou problema que os comandos possam acarretar.
## ! Use isto por sua conta e risco.
## 
## [EN] Title: Nginx Installation Guide for AlmaLinux/Rockylinux/CentOS 9.x
## [PT] Título: Guia para Instalação do Nginx para AlmaLinux/Rockylinux/CentOS 9.x
##
## [ALL] Nginx version: 1.24.x (stable).
##

## [EN] Create the new official repository for download.
## [PT] Cria o novo repositório oficial para download.
wget https://raw.githubusercontent.com/fasthost-br/Linux-RHEL-9/main/nginx/nginx.repo -O /etc/yum.repos.d/nginx.repo

## [EN] Clean all cache files from yum command.
## [PT] Limpa todos os caches do comando yum.
yum clean all

## [EN] Install the package.
## [PT] Instala o pacote.
yum install -y nginx

## [EN] Start and enable the auto-startup. Default port: 80 (HTTP) 443 (HTTPS).
## [PT] Inicia e habilita a auto-inicialização. Porta padrão: 80 (HTTP) e 443 (HTTPS).
systemctl start nginx
systemctl enable nginx

## [ALL] End.