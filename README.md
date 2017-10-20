# Truck Shipments

Este projeto visa fornecer o cadastro de caminhoneiros para que sejam encontradas 
remessa a serem feitas, auxiliando para que carga e caminhoneiro sejam encontrados 
uns pelos outros.

# Instalação do ambiente do servidor

https://gorails.com/setup/

# Cópia do projeto

```
git clone https://github.com/llpereiras/truck-test
```

# Configuração do projeto

Acesse a pasta onde foi clonado o projeto e execute os comandos abaixo

#### Instalação das dependências

```
bundle install
```

#### Criar o banco de dados
```
rails db:create
```

#### Criar as tabelas
```
rails db:migrate
```

#### Levantar o servidor da aplicação
```
rails s
```

A aplicação passará a responder pela url http://localhost:3000


# Testes unitários

#### Instalação das dependências

```
bundle install
```

#### Criar o banco de dados
```
rails db:create
```

#### Criar as tabelas
```
rails db:migrate
```

#### Executando os testes

```
rspec spec
```