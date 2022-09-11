Feature: Paciente

  As a paciente
  I want to adicionar, remover, editar e visualizar meu cadastro
  So that eu não tenha que fazer isso de forma manual ou presencial

  Scenario: Adicionar paciente
    Given que eu estou na página de paciente
    When eu preencho os campos de nome 'Thiago', Data nascimento '2000-05-28', CPF '352.582.588-90', Email 'thiago@gmail.com', Logradouro 'Rua', CEP '55360-000', Bairro 'Bairro', Cidade 'Cidade'
    And eu clico em cadastrar novo paciente
    Then eu vejo a mensagem Paciente cadastrado com sucesso
    And eu vejo o paciente na lista de pacientes

  Scenario: Remover paciente
    Given que eu estou na página de paciente
    And o paciente com CPF '352.582.588-90' está na lista de pacientes
    When eu clico em remover paciente com CPF '352.582.588-90'
    Then eu vejo a mensagem Paciente removido com sucesso
    And eu não vejo o paciente na lista de pacientes