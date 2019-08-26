Quando("eu tento efetuar um login no site centauro.") do
  visit '/slogin'

  fill_in(id: 'input-type-1', with: '**')
  find('input[id="optYesclient"]').click
  fill_in(id: 'input-type-4', with: '*')
  find('input[id="btn_Entrar"]').click
end

Então("verifico se estou logado.") do
  validar_login = find(class: "user-tag")
  expect(validar_login.text).to eq 'Olá, Eloy'
  sleep(5)
end
