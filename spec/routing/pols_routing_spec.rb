require 'rails_helper'

RSpec.describe 'routes for pols' do
  it 'routes GET /pols to the pols controller' do
    expect(get('/pols')).to route_to('pols#index')
  end

  it 'routes GET /pols/1 to the pols controller with id set to 1' do
    expect(get('/pols/1')).to route_to(
      controller: 'pols',
      action: 'show',
      id: '1'
      )
  end
end
