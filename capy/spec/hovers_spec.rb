
describe 'Mouse Hover', :all, :hovers do

    before(:each) do
        visit '/hovers'
    end

    after(:each) do
        sleep 3
    end

    it 'Mouse Hover - Opção 1 com atributo ALT' do
        
        # Atribuir elemento a uma variável
        card = find('img[alt=Blade]')
        # Comando 'hover' utilizado para simular mouse hover em um elemento
        card.hover

        # Verificando conteúdo após mouse hover
        expect(page).to have_content 'Nome: Blade'

    end

    it 'Mouse Hover - Opção 2 com atributo ALT' do
        
        # Atribuir elemento a uma variável (REGEX 'contém')
        card = find('img[alt*=Blade]')
        # Comando 'hover' utilizado para simular mouse hover em um elemento
        card.hover

        # Verificando conteúdo após mouse hover
        expect(page).to have_content 'Nome: Blade'

    end

    it 'Mouse Hover - Opção 3 com atributo ALT' do
        
        # Atribuir elemento a uma variável
        card = find('img[alt="Pantera Negra"]')
        # Comando 'hover' utilizado para simular mouse hover em um elemento
        card.hover

        # Verificando conteúdo após mouse hover
        expect(page).to have_content 'Nome: Pantera Negra'

    end

    it 'Mouse Hover - Opção 4 com atributo ALT' do
        
        # Atribuir elemento a uma variável (REGEX 'começa com')
        card = find('img[alt^=Pantera]')
        # Comando 'hover' utilizado para simular mouse hover em um elemento
        card.hover

        # Verificando conteúdo após mouse hover
        expect(page).to have_content 'Nome: Pantera Negra'

    end

    it 'Mouse Hover - Opção 5 com atributo ALT' do
        
        # Atribuir elemento a uma variável
        card = find('img[alt="Homem Aranha"]')
        # Comando 'hover' utilizado para simular mouse hover em um elemento
        card.hover

        # Verificando conteúdo após mouse hover
        expect(page).to have_content 'Nome: Homem Aranha'

    end

    it 'Mouse Hover - Opção 6 com atributo ALT' do
        
        # Atribuir elemento a uma variável (REGEX 'termina com')
        card = find('img[alt$=Aranha]')
        # Comando 'hover' utilizado para simular mouse hover em um elemento
        card.hover

        # Verificando conteúdo após mouse hover
        expect(page).to have_content 'Nome: Homem Aranha'

    end

end
