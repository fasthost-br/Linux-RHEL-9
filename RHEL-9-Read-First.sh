##
## [EN] Important: This is not a auto-executing shell, its just a step-by-step guide.
## [PT] Importante: Isso não é um script de auto-execução, e sim um passo-a-passo comentado.
##
## [ALL] Created by: Marcelo Pavan (marcelopavan).
## [ALL] Operational system: Almalinux 9.x.
##
## [EN] Description: Pre-install guide for all packages available here.
## [PT] Descrição: Guia de pré-instalação dos pacotes disponíveis aqui.
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