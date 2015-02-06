require 'rails_helper'

RSpec.feature 'Managing Votes' do
  scenario 'List all votes' do
    Vote.create!(issue: 'enviorment', how_vote: true)

    visit '/votes'

    expect(page).to have_content 'Votes'
    expect(page).to have_selector 'body', count: 1
  end

    scenario 'Read about a vote' do
    vote = Vote.create!(issue: 'enviorment', how_vote: true)

    visit "/votes/#{vote.id}"

    expect(page.find('h1')).to have_content 'enviorment'
  end

end
