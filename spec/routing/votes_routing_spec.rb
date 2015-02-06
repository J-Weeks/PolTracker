require 'rails_helper'

RSpec.describe 'routes for votes' do
  it 'routes GET /votes to the votes controller' do
    expect(get('/votes')).to route_to('votes#index')
  end


end
