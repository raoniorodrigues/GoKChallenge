class DashboardPage
  include Capybara::DSL

  def initialize
    @dashboard_el = YAML.load_file(File.join(Dir.pwd, "features\\support\\data\\page_elements\\dashboard_elements.yaml"))
  end

  def validarHomeDashboard
    # Verifique se o texto dentro do elemento é igual a "Paul Collings"
    $Validation.valida_texto_pagina(page, "Paul Collings")
    $Validation.valida_url(page, @dashboard_el["dashboard_url"])
  end

  def clica_dropdown_menu
    $CustomCapybaraDSL.find_and_click(@dashboard_el["dropdown_menu"])
  end
end
