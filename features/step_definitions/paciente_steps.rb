#criacao de paciente

Given('eu estou na pagina do paciente') do
  visit 'pacientes/new'
  expect(page).to have_content('New paciente')
end

When('eu preencho os campos de Nome {string}, Data nascimento {string}, CPF {string}, Email {string}, Logradouro {string}, Complemento {string}, CEP {string}, Bairro {string} e Cidade {string}') do |nome, data_nascimento, cpf, email, logradouro, complemento, cep, bairro, cidade|
  fill_in 'paciente[nome]', :with => nome
  fill_in 'paciente[data_nascimento]', :with => data_nascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'paciente[endereco_attributes][logradouro]', :with => logradouro
  fill_in 'paciente[endereco_attributes][complemento]', :with => complemento
  fill_in 'paciente[endereco_attributes][cep]', :with => cep
  fill_in 'paciente[endereco_attributes][bairro]', :with => bairro
  fill_in 'paciente[endereco_attributes][cidade]', :with => cidade
end

When('eu clico em cadastrar novo paciente') do
  click_button 'Create Paciente'
end

Then('eu vejo a mensagem Paciente cadastrado com sucesso') do
  expect(page).to have_content('paciente was successfully created.')
end


#remocao de paciente

Given('que eu estou na página de paciente') do
  visit 'pacientes/new'
  expect(page).to have_content('New paciente')
end

Given('o paciente com CPF {string} está na lista de pacientes') do |cpf|
  fill_in 'paciente[nome]', :with => 'Thiago'
  fill_in 'paciente[data_nascimento]', :with => '2000-05-28'
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => 'thiago@gmail.com'
  fill_in 'paciente[endereco_attributes][logradouro]', :with => 'Rua'
  fill_in 'paciente[endereco_attributes][complemento]', :with => 'Casa'
  fill_in 'paciente[endereco_attributes][cep]', :with => '12345-678'
  fill_in 'paciente[endereco_attributes][bairro]', :with => 'Bairro'
  fill_in 'paciente[endereco_attributes][cidade]', :with => 'Cidade'
  click_button 'Create Paciente'
  expect(page).to have_content(cpf)
end

When('eu clico em remover paciente com CPF {string}') do |string|
  click_button 'Destroy this paciente'
end

Then('eu vejo a mensagem Paciente removido com sucesso') do
  expect(page).to have_content('Paciente was successfully destroyed')
end