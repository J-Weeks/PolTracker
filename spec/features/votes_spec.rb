require 'rails_helper'

RSpec.feature 'Managing Votes' do
  scenario 'List all votes' do
    Vote.create!(issue: 'enviorment', how_vote: true)

    visit '/votes'

    expect(page).to have_content 'Votes'
    expect(page).to have_selector 'body', count: 1
  end
end
