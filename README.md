# Projeto Sala de Reuniões
## Projeto desenvolvido durante o processo seletivo para a vaga de Desenvolvedor Web na ESl

### Tecnologias utilizadas
- Ruby na versão 3.2.2
- Ruby on rails versão 7.1.1
- Bootstrasp
- Javascript(Ajax/Jquery)
- Banco de dados Postgres

### Para rodar o projeto localmente
````
Faça o clone: 
git clone https://github.com/IcaroEmanuel/processo-seletivo-esl.git

No terminal, navegue até a pasta do projeto e digite o comando bundle install

Criei uma arquivo dotenv para salvar as variáveis de ambiente de acesso ao seu banco de dados

Criei o banco de dados com o comando rails db:create

Execute as migrações: rails db:migrate

Execute as seeds iniciais: rails db:seed

Inicie o projeto com o comando rails server
````
## Features
- Cadastro de usário
- Login
- Tela para reservas de salas. A tela de reservas só pode ser acessada por quem estiver logado
- É possivel gerenciar suas reservas estando logado
- Somente é possível excluir suas reservas estando logado, não é possível excluir reservas de outra pessoa

## Para fazer
- Testes da aplicação
- Melhorias no template
- Calendário baseado em dias reais
- Acesso a reservas antigas em modo leitura

## Informaçõs para contato
```
email: icaro.emanuel@outlook.com
LinkedIn: https://www.linkedin.com/in/icaroemanuel/
Whatsapp: (77)9 9143-1059
```