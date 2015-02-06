require 'rails_helper'

RSpec.describe VotesController do
  let(:valid_attributes) {
    { issue: 'enviroment', how_vote: true }
  }

  let(:invalid_attributes) {
    { issue: nil, how_vote: nil }
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

    it 'assigns @votes' do
      votes = Vote.all
      get :index
      expect(assigns(:votes)).to eq votes
    end
  end

  describe 'GET show' do
    it 'has a 200 status code' do
      vote = Vote.create!(valid_attributes)
      get :show, id: vote
      expect(response.status).to eq 200
    end

    it 'renders the show template' do
      vote = Vote.create!(valid_attributes)
      get :show, id: vote
      expect(response).to render_template('show')
    end

    it 'assigns @vote' do
      vote = Vote.create!(valid_attributes)
      get :show, id: vote
      expect(assigns(:vote)).to eq vote
    end
  end
end
