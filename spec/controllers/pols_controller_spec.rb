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



  end



end
