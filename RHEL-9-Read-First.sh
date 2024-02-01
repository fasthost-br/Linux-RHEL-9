##
## ! [EN] The FastHost company (https://fasthost.com.br) gives all these guides free of charges.
## ! But we cant be responsable about any error and/or problem that the commands here can cause.
## ! Use it on your own risk.
## 
## ! [PT] A empresa FastHost (https://fasthost.com.br) disponibiliza este guia de forma gratuita.
## ! Não nos responsabilizamos por qualquer erro e/ou problema que os comandos possam acarretar.
## ! Use isto por sua conta e risco.
## 
## [EN] Title: Preparing the OS for Packages Installation on AlmaLinux/Rockylinux/CentOS 9.x
## [PT] Título: Guia para Preparação do SO para Instalações de Serviços em AlmaLinux/Rockylinux/CentOS 9.x
##

## [EN] Update all existing packages first.
## [PT] Atualiza todos os pacotes primeiro.
yum update -y

## [EN] Install the yum-utils for yum command.
## [PT] Instala o pacote yum-utils para o comando yum.
yum install -y yum-utils

## [EN] Enable the CRB repository (dependencies here) (old PowerTools)
## [PT] Habilita o repositório CRB (depêndencias aqui) (antigo PowerTools)
yum config-manager --set-enabled crb

## [EN] Install all development packages needed.
## [PT] Instala todos os pacotes necessários para desenvolvedores.
yum groupinstall -y "Development Tools"

## [EN] Install the EPEL repository, in case you dont have it.
## [PT] Instala o repositório EPEL, caso não tenha instalado.
yum install -y epel-release

## [EN] Clean all cache files from yum command.
## [PT] Limpa todos os caches do comando yum.
yum clean all

## [EN] Update all existing packages now.
## [PT] Atualiza todos os pacotes agora.
yum update -y

## [ALL] End.