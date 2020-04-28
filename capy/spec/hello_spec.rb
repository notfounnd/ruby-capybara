#
# Exemplo de comando para executar os testes:
#
#   Por arquivo:    rspec spec\hello_spec.rb
#   Por tag:        rspec --tag @smoke
#   ReportPortal:   rspec --tag @smoke -f ReportPortal::RSpec::Formatter
#

# Define o nome do conjunto de testes
describe 'Meu primeiro script', :all, :smoke, :hello do

    # Define o nome do cenário de teste
    it 'Visitar pagina inicial' do

        # Comando 'visit' inicia o navegador e abre a url especificada
        # Host do ambiente definido no arquivo 'spec_helper.rb'
        visit '/'
        
        # Exemplo para comparar/verificar texto
        expect(page.title).to eql 'Training Wheels Protocol'
        
        # Comando 'puts' insere conteudo no console
        puts page.title

    end

end
