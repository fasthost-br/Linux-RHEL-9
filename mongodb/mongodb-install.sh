##
## ! [EN] The FastHost company (https://fasthost.com.br) gives all these guides free of charges.
## ! But we cant be responsable about any error and/or problem that the commands here can cause.
## ! Use it on your own risk.
## 
## ! [PT] A empresa FastHost (https://fasthost.com.br) disponibiliza este guia de forma gratuita.
## ! Não nos responsabilizamos por qualquer erro e/ou problema que os comandos possam acarretar.
## ! Use isto por sua conta e risco.
## 
## [EN] Title: MongoDB Installation Guide for AlmaLinux/Rockylinux/CentOS 9.x
## [PT] Título: Guia para Instalação do Servidor MongoDB para AlmaLinux/Rockylinux/CentOS 9.x
##
## [ALL] MongoDB version: 7.x (stable).
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

## [EN] Install the package.
## [PT] Instala o pacote.
yum install -y mongodb-org

## [EN] Start and enable the auto-startup. Default port: 27017.
## [PT] Inicia e habilita a auto-inicialização. Porta padrão: 27017.
systemctl start mongod
systemctl enable mongod

## [EN] Makes the login and ask for admin usage.
## [PT] Realiza o login e solicita o uso de admin.
mongosh --port 27017
use admin

## [EN] Create a new super-user. [!!!] Change the "CHANGE_USER" and a new password will be prompted, create a good withou and I would avoid to use symbols.
## [PT] Cria um novo super-usuário. [!!!] Altere o "CHANGE_USER" e a senha será solicitada, insira uma díficil e eu evitaria a utilização de símbolos.
db.createUser(
    {
        user: "CHANGE_USER",
        pwd: passwordPrompt(),
        roles: [ 
            { role: "userAdminAnyDatabase", db: "admin" },
            { role: "readWriteAnyDatabase", db: "admin" } 
        ]
    }
)

## [EN] Exit from database.
## [PT] Saindo da database.
exit

## [EN] Restart the service.
## [PT] Reinicia o serviço.
systemctl restart mongod

## [EN] Please, read the MongoDB docs, and the mongod.conf.default (on this repo) to understand how to change the settings.
## [PT] Por favor, leia a documentação do MongoDB, e o arquivo mongod.conf.default (deste repo) para entender como alterar alguns parâmetros.

## [ALL] End.