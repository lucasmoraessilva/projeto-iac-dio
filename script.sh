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

}

createUsers(){

}
