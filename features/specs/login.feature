#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da Rocklov
    Para que eu possa anunciar meus equipamentos musicais

    @temp
    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "kennedy@gmail.com" e "123456"
        Então sou redirecionado para o Dashboard


    Esquema do Cenario: Tentar logar

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input         | senha_input | mensagem_output                  |
            | kennedy@gmail.com   | 233333      | Usuário e/ou senha inválidos.    |
            | kennedy03@gmail.com | 123456      | Usuário e/ou senha inválidos.    |
            | kennedy#gmail.com   | 123456      | Oops. Informe um email válido!   |
            |                     | 123456      | Oops. Informe um email válido!   |
            | kennedy@gmail.com   |             | Oops. Informe sua senha secreta! |
