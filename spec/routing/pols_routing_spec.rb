require 'rails_helper'

RSpec.describe 'routes for pols' do
  it 'routes GET /pols to the pols controller' do
    expect(get('/pols')).to route_to('pols#index')
  end
end
