#!/bin/bash

clear
while true; do
    echo "===========================================
    Digite a configuração desejada:
    1 - Configurar o VIM
    2 - Configurar Teclado
    3 - Configurar hora local
    4 - Instalar o Sublime Text
    5 - Instalar extensão Mozilla Firefox
    0 - Sair do programa
    ==================================================="

    echo -n "Escolha uma opção e aguarde: "

    read opcao

    if [ -z $opcao ]; then
        echo "ERROR: Digite uma opcao"
        exit
    fi


    case $opcao in
        1)
            git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
            cat config.txt > ~/.vimrc
            vim +'PluginInstall' -R;;
        2)
            setxkbmap -model abnt2 -layout br -variant abnt2;;
        3)
            timedatectl set-timezone America/Sao_Paulo;;
        4)
            sudo snap install sublime-text --classic;;
            0)
            echo "saindo..."
            exit;;
        *)
            echo "opção inválida"
            echo;;
        


        esac
    done
