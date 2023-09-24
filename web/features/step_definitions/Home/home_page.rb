class BasePagePage
  include Capybara::DSL

  def base_page
    visit("")
  end

  def na_tela_de_login
    $Validation.valida_texto_pagina(page, "Login")
  end
end
