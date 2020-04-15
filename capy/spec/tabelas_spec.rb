
describe 'Tabelas', :all, :tabelas do
    
    before(:each) do
        visit '/tables'
    end

    after(:each) do
        sleep 3
    end

    it 'Pesquisa por linhas na tabela - Com detect' do

        # Comando 'all' atribui todos os elementos encontrados pelo seletor a uma variável
        linhas_tabela = all('table tbody tr')
        # Comando 'detect' utilizado para encontrar o elemento apontado na condição
        stark = linhas_tabela.detect { |linhas_tabela| linhas_tabela.text.include?('Robert Downey Jr') }

        # Exemplo para comparar/verificar se contem texto
        expect(stark.text).to include '10.000.000'

    end

    it 'Pesquisa por linhas na tabela - Sem detect' do

        # Atribuir elemento encontrado pelo seletor utilizando pré-condição contendo texto
        diesel = find('table tbody tr', text: '@vindiesel')

        # Exemplo para comparar/verificar se contem texto
        expect(diesel).to have_content '10.000.000'

    end

    it 'Pesquisa por campos nas linhas na tabela' do

        # Atribuir elemento encontrado pelo seletor utilizando pré-condição contendo texto
        diesel = find('table tbody tr', text: '@vindiesel')
        # Atribuir conteudo texto da coluna 3 a uma variável
        movie = diesel.all('td')[2].text

        # Exemplo para comparar/verificar se é igual texto
        expect(movie).to eql 'Velozes e Furiosos'

    end

    it 'Clicar no link delete de uma linha da tabela' do

        # Atribuir elemento encontrado pelo seletor utilizando pré-condição contendo texto
        pratt = find('table tbody tr', text: 'Chris Pratt')
        # Clicar no link 'delete' correspondente a linha selecionada
        pratt.find('a', text: 'delete').click

        # Atribuir texto da mensagem de alerta a uma variável
        mensagem = page.driver.browser.switch_to.alert.text
        # Exemplo para comparar/verificar se é igual texto
        expect(mensagem).to eql 'Chris Pratt foi selecionado para remoção!'

    end

    it 'Clicar no link edit de uma linha da tabela' do

        # Atribuir elemento encontrado pelo seletor utilizando pré-condição contendo texto
        pratt = find('table tbody tr', text: 'Chris Pratt')
        # Clicar no link 'delete' correspondente a linha selecionada
        pratt.find('a', text: 'edit').click

        # Atribuir texto da mensagem de alerta a uma variável
        mensagem = page.driver.browser.switch_to.alert.text
        # Exemplo para comparar/verificar se é igual texto
        expect(mensagem).to eql 'Chris Pratt foi selecionado para edição!'

    end

end
