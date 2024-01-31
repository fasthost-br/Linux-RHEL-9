##
## [EN] Important: This is not a auto-executing shell, its just a step-by-step guide.
## [PT] Importante: Isso não é um script de auto-execução, e sim um passo-a-passo comentado.
##
## [ALL] Created by: Marcelo Pavan (marcelopavan).
## [ALL] Operational system: Almalinux 9.x.
##
## [EN] Description: Uninstall Guide.
## [PT] Descrição: Guia de Desinstalação.
##
## [ALL] MongoDB version: 7.x
##

## [EN] Shutdown and disable the auto-init.
## [PT] Desliga e desabilita a auto-inicialização.
systemctl stop mongod
systemctl disable mongod

## [EN] Remove all the logs and data folders.
## [PT] Remove todas as pastas de logs e data.
rm -rf /var/lib/mongo /var/log/mongodb

## [EN] Remove the sock file.
## [PT] Remove o arquivo sock.
rm -rf /tmp/mongodb-27017.sock

## [EN] Remove the package. [!!!] Please, check the dependencies that will be removed together.
## [PT] Remove o pacote. [!!!] Por favor, verifique as dependências que serão desinstaladas junto.
yum remove -y mongodb-org

## [ALL] End