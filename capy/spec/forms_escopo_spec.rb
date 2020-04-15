
describe 'Forms - Escopo de Teste', :all, :formscadastro do
    
    before(:each) do
        visit '/access'
    end

    after(:each) do
        sleep 3
    end

    it 'Login com sucesso - Técnica de escopo sem within' do

        # Atribuir elemento a uma variável
        login_form = find('#login')

        # Ações e comandos ocorrerão apenas na área do escopo
        login_form.find('input[name=username]').set 'stark'
        login_form.find('input[name=password]').set 'jarvis!'

        click_button 'Entrar'

        # Exemplo para comparar/verificar se contem texto
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end

    it 'Login com sucesso - Técnica de escopo com within' do

        # Comando 'within' utilizado para configurar um escopo para o teste
        # Ações e comandos ocorrerão apenas na área do escopo
        within('#login') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_button 'Entrar'
        end

        # Exemplo para comparar/verificar se contem texto
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end

    it 'Cadastrar com sucesso - Técnica de escopo com within' do

        # Comando 'within' utilizado para configurar um escopo para o teste
        # Ações e comandos ocorrerão apenas na área do escopo
        within('#signup') do
            find('input[name=username]').set 'junior'
            find('input[name=password]').set '123456'

            # Comando 'click_link' é utilizado para clicar em um link
            click_link 'Criar Conta'
        end

        # Exemplo para comparar/verificar se contem texto
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'

    end

end
