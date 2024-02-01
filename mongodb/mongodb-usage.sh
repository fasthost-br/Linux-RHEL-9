##
## ! [EN] The FastHost company (https://fasthost.com.br) gives all these guides free of charges.
## ! But we cant be responsable about any error and/or problem that the commands here can cause.
## ! Use it on your own risk.
## 
## ! [PT] A empresa FastHost (https://fasthost.com.br) disponibiliza este guia de forma gratuita.
## ! Não nos responsabilizamos por qualquer erro e/ou problema que os comandos possam acarretar.
## ! Use isto por sua conta e risco.
## 
## [EN] Title: MongoDB Usage Guide for AlmaLinux/Rockylinux/CentOS 9.x
## [PT] Título: Guia para Utilização do MongoDB para AlmaLinux/Rockylinux/CentOS 9.x
##
## [ALL] MongoDB version: 7.x (stable).
##

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

## [ALL] End.