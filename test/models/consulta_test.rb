require "test_helper"

class ConsultaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'criando consulta sem medico' do
    consulta = Consulta.new
    consulta.data = '2021-03-04'
    consulta.horario = '10:00'

    paciente = Paciente.new
    paciente.nome = 'João'
    paciente.data_nascimento = '2000-01-01'
    paciente.cpf = '28822591070'
    paciente.email = 'joao@gmail.com'
    endereco = Endereco.new
    endereco.logradouro = 'Rua'
    endereco.complemento = 'Casa'
    endereco.cep = '12345-678'
    endereco.bairro = 'Bairro'
    endereco.cidade = 'Cidade'
    paciente.endereco = endereco
    consulta.paciente = paciente

    assert_not consulta.save
  end

  test 'criando consulta sem paciente' do
    consulta = Consulta.new
    consulta.data = '2021-03-04'
    consulta.horario = '10:00'

    medico = Medico.new
    medico.nome = 'Rodrigo'
    medico.cpf = '706.508.980-01'
    medico.email = 'rodrigo@gmail.com'
    medico.especialidade = 'Reumatologista'
    medico.crm = '123456'
    consulta.medico = medico

    assert_not consulta.save
  end

end
