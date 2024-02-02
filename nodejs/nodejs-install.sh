##
## ! [EN] The FastHost company (https://fasthost.com.br) gives all these guides free of charges.
## ! But we cant be responsable about any error and/or problem that the commands here can cause.
## ! Use it on your own risk.
## 
## ! [PT] A empresa FastHost (https://fasthost.com.br) disponibiliza este guia de forma gratuita.
## ! Não nos responsabilizamos por qualquer erro e/ou problema que os comandos possam acarretar.
## ! Use isto por sua conta e risco.
## 
## [EN] Title: NodeJS Installation Guide for AlmaLinux/Rockylinux/CentOS 9.x
## [PT] Título: Guia para Instalação do NodeJS para AlmaLinux/Rockylinux/CentOS 9.x
##
## [ALL] NodeJS version: 20.x (stable).
##

## [EN] Install the yum-utils for yum command.
## [PT] Instala o pacote yum-utils para o comando yum.
yum install -y yum-utils wget

## [EN] Enable the version 20.x repository
## [PT] Habilita o repositório da versão 20.x
yum module enable -y nodejs:20

## [EN] Create the new official repository for download.
## [PT] Cria o novo repositório oficial para download.
yum install -y nodejs

## [EN] Install PM2 for process management.
## [PT] Instala o PM2 para o gerenciamento de processo.
npm install pm2@latest -g

## [EN] Upgrade the NPM version.
## [PT] Atualiza a versão do NPM.
npm install -g npm@10.4.0

## [EN] Install NVM for node version management.
## [PT] Instala o NVM para o gerencimento de versões do node.
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

## [ALL] End.