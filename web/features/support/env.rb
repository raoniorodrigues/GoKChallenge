require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "rspec"
require "yaml"

config = YAML.load_file(File.join(Dir.pwd, "features\\support\\data\\base_page.yaml"))  #alterar caminho
base_url = config["base_url"]

Capybara.default_driver = :selenium_chrome
Capybara.app_host = base_url

Capybara.configure do |config|
  config.run_server = false
  # config.default_driver = :selenium_chrome_headless
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 20
end

World(Capybara::DSL)
World(RSpec::Matchers)
