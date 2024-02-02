## Language

_English_
> We will always use both languages on the scripts: **_English_** and **_Portuguese (PT-BR)_**.
> 
> So you will always see double lines on comments, one for each language.

_Portuguese_
> Nós sempre iremos utilizar as duas línguas nos scriots: **_Inglês_** e **_Português do Brasil_**.
>
> Então você sempre verá linhas de comentários duplicadas, uma para cada língua.

## Operating System

_English_
>  Here we tested the commands on a VPS with **AlmaLinux 9.x** installed (minimal).
>
> But the commands can be runned on any other **RHEL 9.x** based system, like: RockyLinux, CentOS and other.

_Portuguese_
> Aqui nós testamos os comandos em uma VPS com o **AlmaLinux 9.x** instalado (minimal).
>
> Mas os comandos podem ser utilizados em qualquer outro sistema baseado em **RHEL 9.x**, como: RockyLinux, CentOS e outros.

## Important

_English_
> The files available in this repository are not self-executing scripts. They were created as a way to guide the user step-by-step so they can easu copy-and-paste the codes, doing any adaptations and/or changes they wish. This makes it easier to debug any errors during installation and/or configuration.

> Always check the existence of users and passwords in commands, they will always be placed as: **_USER_** and **_PASSWORD_**

> If you have any questions or problems, you can get in touch via **_github@fasthost.com.br_**

_Portuguese_
> Os arquivos disponíveis neste repositório não são scripts para auto-execução. Eles foram criados como forma de guiar o usuário passo-a-passo para que ele possa copiar-e-colar os códigos, e realizar as adaptações e/ou alterações que desejar. Facilitando, desta forma, a depuração de qualquer erro durante a instalação e/ou configuração.

> Sempre verifique a existência de usuários e senhas nos comandos, eles sempre serão colocados como: **_USER_** e **_PASSWORD_**

> Qualquer dúvida e/ou problema que tiver, pode entrar em contato via **_github@fasthost.com.br_**

## Packages availables and tested:
- [X] :green_circle: [MongoDB](mongodb/) (Install/Usage/Uninstall)
- [ ] :red_circle: [MariaDB](mariadb/)
- [X] :green_circle: [PostgreSQL](postgresql/) (Install/Usage/Uninstall)
- [X] :green_circle: [Nginx](nginx/) (Install/Usage/Uninstall)
- [ ] :red_circle: [Certbot](certbot/certbot.sh) (Install/Usage)
- [ ] :red_circle: [Certbot (DNS Cloudflare)](certbot/certbot-dns-cloudflare.sh) (Install/Usage)
- [ ] :red_circle: [Redis](redis/)
- [ ] :red_circle: [RabbitMQ](rabbitmq/)
- [X] :green_circle: [NodeJS](nodejs/nodejs-install.sh) (Install)
- [X] :green_circle: [NPM (NodeJS)](nodejs/npm-upgrade.sh) (Upgrade)
- [X] :green_circle: [PM2 (NodeJS)](nodejs/pm2-install.sh) (Install)
- [X] :green_circle: [NVM (NodeJS)](nodejs/nvm-install.sh) (Install)
- [X] :green_circle: [FirewallD](system/system-firewalld-disable.sh) (Disable)
- [X] :green_circle: [FirewallD](system/system-firewalld-usage.sh) (Usage)
- [X] :green_circle: [SELinux](system/system-selinux-disable.sh) (Disable)
- [X] :green_circle: [SELinux](system/system-selinux-usage.sh) (Usage)
- [X] :green_circle: [SSH](system/system-ssh-config.sh) (Config)
- [X] :green_circle: [SSH](system/system-ssh-recover.sh) (Recover)
- [ ] :red_circle: [AAPanel](aapanel/)
