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

}
