#language: pt
#encoding: UTF-8
#author: ricardo.augusto@totalexpress.com.br

    @cep_consulta
    Funcionalidade: Consultar CEP no ViaCEP
        Como um usuário interessado em obter informações de endereços,
        Quero fazer uma requisição para o ViaCEP com um CEP válido,
        Para receber os detalhes do endereço.

    @cep_consulta_sucesso
    Cenário: Consultar CEP válido
        Quando faço uma requisição GET para o ViaCEP com CEP "06325040"
        Então devo receber os detalhes do endereço

    @cep_consulta_err
    Cenário: Consultar CEP inválido
        Quando faço uma requisição GET para o ViaCEP com um CEP inválido "03423920"
        Então devo receber uma resposta de erro
