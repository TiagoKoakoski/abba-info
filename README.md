# README

# Abba-Info

O sistema foi desenvolvido com a principal funcionalidade fazer o controle patrimonial dos equipamentos de informática de uma pequena empresa. O software utiliza a tecnologia Ruby on Rails e é desenvolvido utilizando TDD.

Neste sistema é possivel realizar os seguintes cadastros:

- Empresas
- Departamentos
- Pessoas
- Emails
- Computadores e itens relacionados
- Dispositivos que possuem acesso a internet

Novas funcionalidades estão sendo adicionadas conforme as demandas vindas do uso da aplicação.

## Ruby version 
```
Ruby version 3.0.0
```

## Dependências

```
gem 'rails', '~> 6.1.4', '>= 6.1.4.4'

gem 'sqlite3', '~> 1.4'

gem 'puma', '~> 5.0'

gem 'sass-rails', '>= 6'

gem 'webpacker', '~> 5.0'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.7'

gem 'simple_form'

gem 'bootstrap', '~> 5.1.3'

gem 'devise'
```

## Usando o sistema via Docker

Montando o container:
```
sudo docker build . -t abba
```
Executando o container:
```
docker run -it -p 3000:3000 -v ~/caminho_ate_o_app/abba-info/:/app abba:latest bash

```


## Configuration

Executar os seguintes comandos:

```
bin/setup

bundle install
```

## How to run the test suite

Para realizar os testes executar os comandos:

```
rspec
```

## Ativando o sistema

Para usar a aplicação:

```
rails s
```

Abrir o navegador no endereço:

http://127.0.0.1:3000/

## Utilização como visitante

Ao conectar-se ao aplicativo o visitante consegue visualizar os conteudos cadastrados atraves do menu a esquerda, ou conferir os resumos na pagina principal e sua dashboard.

Para cadastros e edições é necessário o login no sistema.

## Utilização como usuário

Para usufruir de todas as funcionalidades do aplicativo é necessário realizar o login na aplicação, para testes foi gerado o usuário:

```
Email: admin@email.com
Senha: password
```
Ao logar na aplicação é exibida a dashboard completa e os menus para funcionalidades restritas.
Pode-se então realizar edições, cadastros, vizualizar senhas de redes e e-mails para auxiliar nas configurações necessárias aos profissionais da área de TI.
