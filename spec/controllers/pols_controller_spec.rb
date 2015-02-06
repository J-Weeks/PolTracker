require 'rails_helper'

RSpec.describe PolsController do
  let(:valid_attributes) {
    { congressman: 'Bob', party: "Democrat" }
  }

  let(:invalid_attributes) {
    { congressman: nil, party: nil }
  }

  describe 'GET index' do
    it 'has a 200 status code' do
      get :index
      expect(response.status).to eq 200
    end

    it ' renders the index' do
      get :index
      expect(response).to render_template('index')
    end

    it 'assigns @pols' do
      pols = Pol.all
      get :index
      expect(assigns(:pols)).to eq pols
    end
  end

  describe 'GET show' do
    it 'has a 200 status code' do
      pol = Pol.create!(valid_attributes)
      get :show, id: pol
      expect(response.status).to eq 200
    end

    it 'renders the show template' do
      pol = Pol.create!(valid_attributes)
      get :show, id: pol
      expect(response).to render_template('show')
    end

    it 'assigns @pol' do
      pol = Pol.create!(valid_attributes)
      get :show, id: pol
      expect(assigns(:pol)).to eq pol
    end

  end
end
