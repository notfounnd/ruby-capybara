
describe 'Checkbox - Caixas de Seleção', :all, :smoke, :checkbox do

    # Define a pré-execução de cada cenário de teste
    before(:each) do
        visit '/checkboxes'
    end

    # Define a pós-execução de cada cenário de teste
    after(:each) do
        sleep 3
    end

    # Define o nome do cenário de teste
    it 'Marcar uma opção - Com atributo ID' do

        # Comando 'check' utilizado para marcar uma opção checkbox
        check('thor')

    end

    # Define o nome do cenário de teste
    it 'Desmarcar uma opção - Com atributo Name' do

        # Comando 'check' utilizado para desmarcar uma opção no checkbox
        uncheck('antman')

    end

    # Define o nome do cenário de teste
    it 'Marcar uma opção - Com atributo Value' do

        # Comando 'set' utilizado para marcar ou desmarcar uma opção no checkbox
        find('input[value=cap]').set(true)

    end

    # Define o nome do cenário de teste
    it 'Desmarcar uma opção - Com atributo Value' do

        # Comando 'set' utilizado para marcar ou desmarcar uma opção no checkbox
        find('input[value=guardians]').set(false)

    end

end
