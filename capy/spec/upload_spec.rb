
describe 'Upload', :all, :upload do

    before(:each) do
        visit '/upload'
        @arquivo = Dir.pwd + '/spec/files/capybara.txt'
        @imagem = Dir.pwd + '/spec/files/capybara.png'
    end

    after(:each) do
        sleep 3
    end

    it 'Upload de arquivo texto' do

        # Comando 'attach_file' utilizado para inserir arquivo em campo de upload
        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        # Verificando arquivo na página após upload
        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'capybara.txt'

    end

    it 'Upload de arquivo imagem' do

        attach_file('file-upload', @imagem)
        click_button 'Upload'

        div_arquivo = find('#new-image')
        # Comando 'div_arquivo[:src]' exemplificando o uso de atributos
        expect(div_arquivo[:src]).to include '/uploads/capybara.png'

    end

end
