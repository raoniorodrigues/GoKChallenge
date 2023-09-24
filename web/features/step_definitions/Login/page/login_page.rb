class LoginPage
  def initialize
    @data = YAML.load_file(File.join(Dir.pwd, "features\\support\\data\\login.yaml"))
    @login_el = YAML.load_file(File.join(Dir.pwd, "features\\support\\data\\page_elements\\login_elements.yaml"))
  end

  def realiza_login
    $CustomCapybaraDSL.fill_in_field(@login_el["username_selector"], with: @data["username"])
    $CustomCapybaraDSL.fill_in_field(@login_el["password_selector"], with: @data["password"])
  end

  def clica_btn_login
    $CustomCapybaraDSL.find_and_click(@login_el["login_button_selector"])
  end
end
