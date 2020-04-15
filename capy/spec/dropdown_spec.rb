
# rspec --tag @dropdown (comando para executar tags).
# Tag ':dropdown' utilizada como exemplo para executar o conjunto de testes dessa spec.
describe 'Dropdown - Caixa de Opções', :all, :dropdown do

    it 'Selecionar item específico - Com atributo ID' do

        visit '/dropdown'

        # Comando 'select' utilizado para selecionar uma opção no dropdown
        select('Loki', from: 'dropdown')
        # Sleep temporario para pausar a execução
        sleep 3

    end

    it 'Selecionar item específico - Sem atributo ID' do

        visit '/dropdown'

        # Atribuir opções possíveis do dropdown a uma variável
        drop = find('.avenger-list')
        # Comando 'select_option' utilizado para selecionar uma opção no dropdown
        drop.find('option', text: 'Scott Lang').select_option
        # Sleep temporario para pausar a execução
        sleep 3

    end

    # Tags também podem ser utilizadas para executar um casos de testes específicos, indementependente do seu conjunto de testes.
    # Tag ':sample' utilizada como exemplo para executar o caso de teste dessa spec.
    it 'Selecionar qualquer item', :sample do

        visit '/dropdown'

        # Atribuir opções possíveis do dropdown a uma variável
        drop = find('.avenger-list')
        # Comando 'all' monta um array com todas as opções possíveis
        # Comando 'sample' seleciona uma das opções existentes no array
        # Comando 'select_option' utilizado para selecionar uma opção no dropdown
        drop.all('option').sample.select_option
        # Sleep temporario para pausar a execução
        sleep 3

    end

end
