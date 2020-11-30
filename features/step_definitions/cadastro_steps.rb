
Dado('que acesso a página de cadastro') do
    visit "http://rocklov-web:3000/signup"
end

Quando('submeto o seguinte formulário de cadastro:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable

    # log table.hashes

    user = table.hashes.first

    # log user

    MongoDB.new.remove_user(user[:email])

    find("#fullName").set user[:nome]
    find("#email").set user[:email]
    find("#password").set user[:senha]

    click_button "Cadastrar"
  end
  
  
Então('sou redirecionado para o Dashboard') do
    expect(page).to have_css ".dashboard"
    sleep 3
end

# Efetuando cadastro sem o nome


# Efetuando cadastro sem o e-mail

  
# Efetuando cadastro com o e-mail incorreto


# Efetuando cadastro sem submeter a senha


  

Então('vejo a mensagem de alerta: {string}') do |expect_alert|
    alert = find(".alert-dark")
    expect(alert.text).to eql expect_alert
end
  
  
  