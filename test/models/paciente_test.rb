require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'salvar paciente sem endereço' do
    paciente = Paciente.new
    paciente.nome = 'João'
    paciente.data_nascimento = '2000-01-01'
    paciente.cpf = '28822591070'
    paciente.email = 'joao@gmail.com'
    assert_not paciente.save
  end

  test 'salvar paciente com cpf invalido' do
    paciente = Paciente.new
    paciente.nome = 'João'
    paciente.data_nascimento = '2000-01-01'
    paciente.cpf = '12345678999'
    paciente.email = 'joao@gmail.com'

    endereco = Endereco.new
    endereco.logradouro = 'Rua'
    endereco.complemento = 'Casa'
    endereco.cep = '12345-678'
    endereco.bairro = 'Bairro'
    endereco.cidade = 'Cidade'
    paciente.endereco = endereco

    assert_not paciente.save
  end
end
