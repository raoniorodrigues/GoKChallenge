# Em algum arquivo de step do Cucumber
Quando("faço uma requisição GET para o ViaCEP com CEP {string}") do |cep|
  @response = CustomHttp.get_cep(cep)
end

Então("devo receber os detalhes do endereço") do
  parsed_response = @response.parsed_response

  expect(@response.code).to eql(200)

  expected_data = {
    "cep" => "06325-040",
    "logradouro" => "Rua Guanabara",
    "complemento" => "",
    "bairro" => "Conjunto Habitacional Presidente Castelo Branco",
    "localidade" => "Carapicuíba",
    "uf" => "SP",
    "ibge" => "3510609",
    "gia" => "2550",
    "ddd" => "11",
    "siafi" => "6313",
  }

  expected_data.each do |key, value|
    expect(parsed_response[key]).to eql(value)
  end
end

Quando("faço uma requisição GET para o ViaCEP com um CEP inválido {string}") do |cep|
  @response = CustomHttp.get_cep(cep)
end

Então("devo receber uma resposta de erro") do
  parsed_response = @response.parsed_response

  expect(@response.code).to eql(200) # Verifique se o código de resposta é 200 (requisição bem sucedida)
  expect(parsed_response["erro"]).to eql(true)
end
