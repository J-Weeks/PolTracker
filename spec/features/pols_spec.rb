require 'rails_helper'

RSpec.feature 'Managing pols' do
  scenario 'List all pols' do
    Pol.create!(congressman: "Bob", party: "democrat")

    visit '/pols'

    expect(page).to have_content 'Pols'
    expect(page).to have_selector 'body', count: 1
  end

  scenario 'Read about a pol' do
    pol = Pol.create!(congressman: "Bob", party: "democrat")

    visit "/pols/#{pol.id}"

    expect(page.find('h1')).to have_content 'Bob'
    expect(page).to have_content "democrat"
  end

end
