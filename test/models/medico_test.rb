require "test_helper"

class MedicoTest < ActiveSupport::TestCase

  # este teste ja era existente no repositorio da atividade

  test 'criando medico corretamente' do
    medico = Medico.new nome: 'Rodrigo Andrade', cpf: '706.508.980-01', email: 'rodrigo@rodrigo.com',
                        especialidade: 'Reumatologista', crm: '123456'
    assert medico.save
  end

  # Testes criados para a atividade

  test 'salvar medico com cpf invalido' do
    medico = Medico.new nome: 'Rodrigo Andrade'
    medico.cpf = '12345678999'
    medico.email = 'rodrigo@rodrigo.com'
    medico.especialidade = 'Reumatologista'
    medico.crm = '123456'
    assert_not medico.save
  end

  test 'salvar medico sem email' do
    medico = Medico.new nome: 'Rodrigo Andrade'
    medico.cpf = '706.508.980-01'
    medico.especialidade = 'Reumatologista'
    medico.crm = '123456'
    assert_not medico.save
  end

end
