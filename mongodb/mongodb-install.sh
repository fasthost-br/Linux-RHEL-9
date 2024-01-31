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
## [ALL] MongoDB version: 7.x
##

## [EN] Create the new official repository for download.
## [PT] Cria o novo repositório oficial para download.
echo '[mongodb-org-7.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/9/mongodb-org/7.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://pgp.mongodb.com/server-7.0.asc' >> /etc/yum.repo.d/mongodb.repo

## [EN] Clean all cache files from yum command.
## [PT] Limpa todos os caches do comando yum.
yum clean all

## [EN] Install the MongoDB package.
## [PT] Instala o pacote MongoDB.
yum install -y mongodb-org

## [EN] Start and enable the auto-startup. Default port: 27017.
## [PT] Inicia e habilita a auto-inicialização. Porta padrão: 27017.
systemctl start mongod
systemctl enable mongod

## [EN] Makes the login and ask for admin usage.
## [PT] Realiza o login e solicita o uso de admin.
mongosh --port 27017
use admin

## [EN] Create a new super-user. [!!!] Change the "USER" and a new password will be prompted, create a medium one without symbols.
## [PT] Cria um novo super-usuário. [!!!] Altere o "USER" e a senha será solicitada, insira uma díficil e sem símbolos.
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

## [EN] Exit from database
## [PT] Saindo da database
exit

## [EN] Enabling the authentication.
## [PT] Habilitando a autenticação.
echo 'security:
  authorization: enabled' >> /etc/mongod.conf

## [EN] Restart the service.
## [PT] Reinicia o serviço.
systemctl restart mongod

## [EN] That is all, now your database is listening on localhost:27017, for internal application dont need to open that port on FirewallD (most of case).
## [PT] Isso é tudo, agora seu banco de dados está respondendo em localhost:27017, para aplicações internas não precisará abrir a porta no FirewallD (maioria dos casos).

## [ALL] End