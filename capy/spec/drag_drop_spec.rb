
describe 'Drag and Drop', :all, :drop do

    before(:each) do
        visit '/drag_and_drop'
    end

    after(:each) do
        sleep 3
    end

    it 'Realizar Drag and Drop' do
        
        # Atribuir áreas dropaveis a uma variável
        stark = find('.team-stark .column')
        cap = find('.team-cap .column')
        
        # Atribuir elemento dropável a uma variável
        spiderman = find('img[alt$=Aranha]')
        # Comando 'drag_to' utilizado para realizar drag and drop para um elemento 
        spiderman.drag_to stark

        # Verificando conteúdo após drag and drop
        expect(stark).to have_css 'img[alt$=Aranha'
        expect(cap).not_to have_css 'img[alt$=Aranha'

    end

end
