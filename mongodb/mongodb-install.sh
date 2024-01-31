##
## [EN] Important: This is not a auto-executing shell, its just a step-by-step guide.
## [PT] Importante: Isso não é um script de auto-execução, e sim um passo-a-passo comentado.
##
## [ALL] Created by: Marcelo Pavan (marcelopavan).
## [ALL] Operational system: Almalinux 9.x.
##
## [EN] Description: MongoDB Installaton Guide.
## [PT] Descrição: Guia de Instalação do MongoDB.
##

## [EN] Create the new official repository for download.
## [PT] Cria o novo repositório oficial para download.
echo '[mongodb-org-7.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/9/mongodb-org/7.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://pgp.mongodb.com/server-7.0.asc' >> /etc/yum.repo.d/mongodb.repo

## [EN] Clean all cache files from YUM command.
## [PT] Limpa todos os caches do comando YUM.
yum clean all

## [EN] Install the MongoDB package.
## [PT] Instala o pacote MongoDB.
yum install -y mongodb-org

## [EN] Init the MongoDB service, default port listening: 27017.
## [PT] Inicializa o serviço do MongoDB, porta padrão de uso: 27017.
systemctl start mongod

## [EN] Enable the auto-init on system startup.
## [PT] Habilita a inicialização automática junto com o sistema.
systemctl enable mongod

## [EN] Makes the login on the local database, to start commands.
## [PT] Faz o login no banco de dados local, para iniciar os comandos.
mongosh --port 27017

## [EN] Create the new super-user for database administration. [!!!] USER present here, change to your desired username.
## [PT] Cria um novo super-usuário para adminsitração do banco de dados. [!!!] USER está presente aqui, altere para o usuário desejado.
use admin
db.createUser(
    {
        user: "USER",
        pwd: passwordPrompt(),
        roles: [ 
            { role: "userAdminAnyDatabase", db: "admin" },
            { role: "readWriteAnyDatabase", db: "admin" } 
        ]
    }
)

## [ALL] End