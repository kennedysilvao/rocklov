Dado('que acesso a página de cadastro') do
    visit "http://rocklov-web:3000/signup"
end
  
Quando('submeto o meu cadastro completo') do
    find("#fullName").set "Kennedy Silva"
    find("#email").set "kennedysilva@gmail.com"
    find("#password").set "123456"
    sleep 20
    click_button "Cadastrar"
end
  
Então('sou redirecionado para o Dashboard') do
    pending # Write code here that turns the phrase above into concrete actions
end
  