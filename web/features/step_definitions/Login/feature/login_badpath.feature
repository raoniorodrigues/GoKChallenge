#language: pt
#encoding: UTF-8
#author: raoni.rodriguess@gmail.com


@login_semsucesso
Funcionalidade: Gerenciamento de Admins

    Cenário: Credenciais inválidas
      Dado que o usuário está na página de login
      Quando o usuário insere credenciais inválidas
      E clica no botão de login
      Então o sistema deve exibir uma mensagem de erro
