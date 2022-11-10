#!/bin/bash

createDirectories(){
    # Criando diretórios aplicando permissões indicadas no projeto
    echo Criando diretórios com suas permissões
    mkdir -m 777 /publico
    mkdir -m 770 /adm
    mkdir -m 770 /ven
    mkdir -m 770 /sec
}

createGroups(){
    # Criando grupos indicados no projeto
    echo Criando grupos de usuários
    groupadd GRP_ADM
    groupadd GRP_VEN
    groupadd GRP_SEC
}

createUsers(){
    # Criando usuários aplicando configurações indicadas no projeto
    echo Criando usuários
    useradd -m -g GRP_ADM -s /bin/bash carlos
    useradd -m -g GRP_ADM -s /bin/bash maria
    useradd -m -g GRP_ADM -s /bin/bash joao

    useradd -m -g GRP_VEN -s /bin/bash debora
    useradd -m -g GRP_VEN -s /bin/bash sebastiana
    useradd -m -g GRP_VEN -s /bin/bash roberto

    useradd -m -g GRP_SEC -s /bin/bash josefina
    useradd -m -g GRP_SEC -s /bin/bash amanda
    useradd -m -g GRP_SEC -s /bin/bash rogerio
}

configureDirectories(){
    # Configurando dono e grupo dos diretórios conforme indicado no projeto
    echo Configurando diretórios
    chown root:GRP_ADM /adm
    chown root:GRP_VEN /ven
    chown root:GRP_SEC /sec
}

deleteOldConfigurations(){
    # Deletando diretórios com configurações antigas
    echo Deletando diretórios antigos
    rm -rf /publico /adm /ven /sec

    # Deletando usuários antigos
    echo Deletando usuários antigos
    userdel -r carlos
    userdel -r maria
    userdel -r joao
    userdel -r debora
    userdel -r sebastiana
    userdel -r roberto
    userdel -r josefina
    userdel -r amanda
    userdel -r rogerio

    # Deletando grupos antigos
    echo Deletando grupos antigos
    groupdel GRP_ADM
    groupdel GRP_VEN
    groupdel GRP_SEC
}

main(){
    # Deletando configurações antigas
    deleteOldConfigurations

    # Criando diretórios
    createDirectories

    # Criando grupos
    createGroups

    # Criando usuários
    createUsers

    # Configurando novos diretórios
    configureDirectories
}

main