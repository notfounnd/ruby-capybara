require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara::DSL

  # Configuração before para ajustar o tamanho da janela do navegador
  config.before(:example) do
    page.current_window.resize_to(1280, 600)
  end

  # Configuração after para realizar screenshot do teste executado
  config.after(:example) do |e|
    # Gerar nome para o arquivo com base em cada exemplo (cenário) executado
    nome = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_')
    # Comando 'save_screenshot' utilizado para gerar screenshot
    # Comando 'if e.exception' condicional ternário para realizar screenshot apenas em execução com falha
    page.save_screenshot('log/' + nome + '.png') if e.exception # Screenshot apenas em execução com falha
    #page.save_screenshot('log/' + nome + '.png') # Screenshot em todas as execuções
  end

end

Capybara.configure do |config|

  # Chrome
  #config.default_driver = :selenium_chrome

  # Chrome em modo Headless
  #config.default_driver = :selenium_chrome_headless
  
  # Firefox
  config.default_driver = :selenium

  # Timeout para encontrar elemento na aplicação
  config.default_max_wait_time = 10

  # Host padrão da aplicação
  config.app_host = 'https://training-wheels-protocol.herokuapp.com'

end
