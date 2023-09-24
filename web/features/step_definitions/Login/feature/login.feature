#language: pt
#encoding: UTF-8
#author: raoni.rodriguess@gmail.com

@login_logout_sucesso
Funcionalidade: Gerenciamento de Admins

  @login_sucesso
  Cenário: Realizar Login e Logout
    Dado que o usuário está na página de login
    Quando o usuário insere suas credenciais corretas
    E clica no botão de login
    E o usuário clica no botão de logout
    Então o usuário deve ser redirecionado para a página de login

