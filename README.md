## Ruby + Capybara + ReportPortal
Projeto exemplo de automação de testes desenvolvido com Ruby + Capybara e integrado com a ferramenta [ReportPortal](https://reportportal.io/).

O objetivo principal desse projeto foi desenvolver de forma didática uma introdução à linguagem Ruby para uso prático em um projeto voltado para automação de testes. Para uma melhor fixação dos conceitos desenvolvidos, todos os [arquivos de testes](https://github.com/notfounnd/ruby-capybara/tree/master/capy/spec) possuem comentários explicativos dos comandos utilizados.

#### Pré-requisitos para uso
Para utilização é necessário possuir instalado em sua estação de trabalho:

> [Ruby + Devkit](https://rubyinstaller.org/downloads/) >= v2.4.0

> [Chromedriver](https://chromedriver.storage.googleapis.com/index.html)

#### Iniciando o ambiente do projeto
Para iniciar o ambiente do projeto, você deve efetuar a instalação do Ruby + Devkit e configurar o chromedriver.exe no path de variáveis de ambiente do seu sistema operacional.

Após efetuar essas configurações, efetue o dowload/clone do projeto em seu ambiente de trabalho.

Via terminal, acessa a pasta 'capy' do projeto e execute o seguinte comando:

```
bundle install
```

Após o término da execução do comando, você pode executar os testes desenvolvidos no projeto através da ferramenta RSpec.

#### Exemplos de comandos para execução dos testes
Os testes do projeto foram desenvolvido com o auxilio da ferramenta [RSpec](https://rspec.info/). A execução dos testes pode ser feita via terminal utilizando comandos como os listados nos exemplos abaixo. Para executá-los, acesse a pasta 'capy' em seu terminal.

Execução por arquivo:
```
rspec spec\hello_spec.rb
```

Execução por tag:
```
rspec --tag @hello
```

_Você pode encontrar uma explicação sobre tag no arquivo [dropdown_spec.rb](https://github.com/notfounnd/ruby-capybara/blob/master/capy/spec/dropdown_spec.rb)._

#### Integração com ReportPortal
Opcionalmente, você pode [instalar](https://reportportal.io/installation) a ferramenta ReportPortal para integrar um painel de controle ao seu ambiente.

Para isso, após configurar a ferramenta, você deve preencher os parâmetros de configuração com os dados do seu usuário no portal no arquivo [report_portal.yml](https://github.com/notfounnd/ruby-capybara/tree/master/capy/config) na pasta 'config'.

Após isso, remova o inficador de comnetário (#) da seguinte linha no arquivo [spec_helper.rb](https://github.com/notfounnd/ruby-capybara/blob/master/capy/spec/spec_helper.rb).

```
RSpec.configuration.reporter.message(nome)
```

Utilizando integração com ReportPortal:
```
rspec spec\hello_spec.rb -f ReportPortal::RSpec::Formatter
rspec --tag @smoke -f ReportPortal::RSpec::Formatter
```
