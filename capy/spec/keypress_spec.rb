
describe 'Key Press', :all, :keypress do

    before(:each) do
        visit '/key_presses'
    end

    after(:each) do
        sleep 3
    end

    it 'Simular Teclado - Evento Único' do
        
        # Comando 'send_keys' para simular tecla acionada (Exemplo: TAB)
        find('#campo-id').send_keys :tab
        # Verificando evento de teclado em campo exibido na página
        expect(page).to have_content 'You entered: TAB'

        sleep 1

    end

    it 'Simular Teclado - Vários Eventos' do
        
        # Criando array de comandos do teclado
        # %i[ ] notação Ruby para array de simbolos (não interpolado - separados por espaço em branco)
        # Site com explicativos de notação Ruby - http://ruby.zigzo.com/2014/08/21/rubys-notation/
        teclas = %i[tab escape enter shift control alt]

        # Laço de repetição para percorrer o array
        teclas.each do |t|
            # Comando 'send_keys' para simular tecla acionada
            find('#campo-id').send_keys t
            # Verificando de maneira dinâmica evento de teclado em campo exibido na página
            expect(page).to have_content 'You entered: ' + t.to_s.upcase

            sleep 1
        end

    end

    it 'Simular Teclado - Letras' do
        
        # Criando array de comandos do teclado
        # %w[ ] notação Ruby para array de palavras (não interpolado - separados por espaço em branco)
        # Site com explicativos de notação Ruby - http://ruby.zigzo.com/2014/08/21/rubys-notation/
        letras = %w[a s d f g h j k l]

        # Laço de repetição para percorrer o array
        letras.each do |l|
            # Comando 'send_keys' para simular tecla acionada
            find('#campo-id').send_keys l
            # Verificando de maneira dinâmica evento de teclado em campo exibido na página
            expect(page).to have_content 'You entered: ' + l.to_s.upcase

            sleep 1
        end

    end

end
