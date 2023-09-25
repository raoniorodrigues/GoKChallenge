class BasePagePage
  include Capybara::DSL

  def base_page
    visit("")
  end

  def na_tela_de_login
    $Validation.valida_texto_pagina(page, "Login")
  end

  def valida_mensagem_erro_login
    $Validation.valida_texto_pagina(page, "Invalid credentials")
  end
end
