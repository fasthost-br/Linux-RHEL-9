##
## [EN] Important: This is not a auto-executing shell, its just a step-by-step guide.
## [PT] Importante: Isso não é um script de auto-execução, e sim um passo-a-passo comentado.
##
## [ALL] Created by: Marcelo Pavan (marcelopavan).
## [ALL] Operational system: Almalinux 9.x.
##
## [EN] Description: Installaton Guide.
## [PT] Descrição: Guia de Instalação.
##
## [ALL] Nginx version: 1.24.x
##

## [EN] Create the new official repository for download.
## [PT] Cria o novo repositório oficial para download.
echo '[nginx-stable]
name=nginx stable repo
baseurl=http://nginx.org/packages/centos/$releasever/$basearch/
gpgcheck=1
enabled=1
gpgkey=https://nginx.org/keys/nginx_signing.key
module_hotfixes=true

[nginx-mainline]
name=nginx mainline repo
baseurl=http://nginx.org/packages/mainline/centos/$releasever/$basearch/
gpgcheck=1
enabled=0
gpgkey=https://nginx.org/keys/nginx_signing.key
module_hotfixes=true' >> /etc/yum.repo.d/nginx.repo

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




## [EN] Restart the service.
## [PT] Reinicia o serviço.
systemctl restart mongod

## [ALL] End