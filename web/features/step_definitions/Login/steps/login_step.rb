Dado("que o usuário está na página de login") do
  $BasePagePage.base_page
  $BasePagePage.na_tela_de_login
end

Quando("o usuário insere suas credenciais corretas") do
  $LoginPage.realiza_login
end

Quando("clica no botão de login") do
  $LoginPage.clica_btn_login
  $DashboardPage.validarHomeDashboard
end

Quando("o usuário clica no botão de logout") do
  $DashboardPage.clica_dropdown_menu
  click_link("Logout")
end

Então("o usuário deve ser redirecionado para a página de login") do
  $BasePagePage.na_tela_de_login
end
