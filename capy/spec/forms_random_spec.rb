
describe 'Forms - Random', :all, :formsrandom do
    
    before(:each) do
        visit '/login2'
    end

    after(:each) do
        sleep 3
    end

    it 'Login com sucesso' do

        # Comando 'set' é utilizado para escrever em um campo de texto
        find('#userId').set 'stark'
        find('#passId').set 'jarvis!'

        # Atribuir elemento a uma variável
        login_form = find('#login')

        # Comando 'case/when' utilizado para condicionais do tipo switch
        case login_form.text
        when /Dia/
            find('#day').set '29'
        when /Mês/
            find('#month').set '05'
        when /Ano/
            find('#year').set '1970'
        end

        # Comando 'click_button' é utilizado para clicar em um botão
        click_button 'Login'

        # Exemplo para verificar se o campo está visivel na página
        expect(find('#flash').visible?).to be true

        # Exemplo para comparar/verificar se contem texto
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end

end
