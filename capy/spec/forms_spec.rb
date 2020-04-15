
describe 'Forms', :all, :smoke do

    before(:each) do
        visit '/login'
    end

    after(:each) do
        sleep 3
    end
    
    it 'Login com sucesso' do

        # Comando 'fill_in' é utilizado para escrever em um campo de texto
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        # Comando 'click_button' é utilizado para clicar em um botão
        click_button 'Login'

        # Exemplo para verificar se o campo está visivel na página
        expect(find('#flash').visible?).to be true

        # Exemplo para comparar/verificar se contem texto
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end

end
