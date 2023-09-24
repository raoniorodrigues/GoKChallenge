require "httparty"

class CustomHttp
  include HTTParty
  base_uri "https://viacep.com.br/ws"  # Endereço base do ViaCEP

  def self.get_cep(cep)
    get("/#{cep}/json/")
  end
end
