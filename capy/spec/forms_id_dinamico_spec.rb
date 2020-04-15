
describe 'Forms - IDs Dinâmicoso', :all, :id_dinamico do
    
    before(:each) do
        visit '/access'
    end

    after(:each) do
        sleep 3
    end

    it 'Cadastrar com sucesso - IDs Dinâmicos' do

        # REGEX $= Termina com
        # REGEX ^= Começa com
        # REGEX *= Contem

        find('input[id$=UsernameInput]').set 'junior'
        find('input[id^=PasswordInput]').set '123456'
        # Comando 'click_link' utilizado para efetuar click no elemento
        find('a[id*=GetStartedButton]').click

        # Exemplo para comparar/verificar se contem texto
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'

    end

end
