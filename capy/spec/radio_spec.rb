
describe 'Checkbox - Caixas de Seleção', :all, :smoke, :radio do

    before(:each) do
        visit '/radios'
    end

    after(:each) do
        sleep 3
    end

    it 'Marcar uma opção - Com atributo ID' do

        # Comando 'choose' utilizado para marcar uma opção radio
        choose('cap')

    end

    it 'Marcar uma opção - Com atributo Value' do

        # Comando 'click' utilizado para marcar uma opção no checkbox
        find('input[value=guardians]').click

    end

end
