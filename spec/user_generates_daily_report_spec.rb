require "rails_helper"

RSpec.feature "User generates daily report" do

  scenario "they open the stock report page" do
    visit root_path
    click_on "Relatórios"
    select('Diário', from: 'Selecione a Frequência')
    select('PETR4', from: 'Selecione a Empresa')
    click_on "Adicionar"
    select('Simples', from: 'Tipo do Relatório')
    select('08:00', from: 'Escolha o Horário')
    click_on "Criar"
  end
end
