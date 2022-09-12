Feature: Medico
  As a medico
  I want to adicionar, remover, visualizar e editar meu cadastro
  So that eu nao tenha que fazer isso de forma manual ou presencial

  # Cenarios já existentes no repositorio
  Scenario: remover medico
    Given estou na pagina de medico
    And o medico com CRM '11223' existe
    When eu clico em remover o medico com CRM '11223'
    Then eu vejo uma mensagem que o medico foi apagado com sucesso

  Scenario: cadastrar medico
    Given estou na pagina de medico
    When eu preencho os campos de nome 'Emily Souza', cpf '014.945.910-65', email 'emily@gmail.com', especialidade 'Pediatra' e crm '12333'
    And eu clico em cadastrar novo medico
    Then eu vejo uma mensagem que o medico foi cadastrado com sucesso

  # Cenarios que foram implementados para Atividade 2

    Scenario: editar medico
        Given estou na pagina de medico
        And o medico com CRM '11223' existe
        When eu clico em editar o medico com CRM '11223'
        And eu edito os campo de Email 'emily@medica.com'
        Then eu vejo uma mensagem que o medico foi editado com sucesso
      
    Scenario: visualizar medico
        Given estou na pagina de medico
        And o medico com CRM '11223' existe
        When eu clico em visualizar o medico com CRM '11223'
        Then eu vejo os dados do medico