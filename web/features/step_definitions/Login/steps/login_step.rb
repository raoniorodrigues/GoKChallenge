Dado("que o usuário está na página de login") do
  $BasePagePage.base_page
  $BasePagePage.na_tela_de_login
end

Quando("o usuário insere suas credenciais corretas") do
  $LoginPage.realiza_login
end

Quando("clica no botão de login") do
  $LoginPage.clica_btn_login
end

Quando("valido que estou na tela de Dashboard") do
  $DashboardPage.validarHomeDashboard
end

Quando("o usuário clica no botão de logout") do
  $DashboardPage.clica_dropdown_menu
  click_link("Logout")
end

Então("o usuário deve ser redirecionado para a página de login") do
  $BasePagePage.na_tela_de_login
end

# Steps de Caminho alteranivo e insucesso

Quando("o usuário insere credenciais {string} e {string} inválidas") do |login, senha|
  $LoginPage.realiza_login_fail(login, senha)
end

Então("o sistema deve exibir uma mensagem de erro") do
  $BasePagePage.valida_mensagem_erro_login
end
