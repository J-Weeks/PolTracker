class PolsController < ApplicationController
  def index
    @pol = Pol.all
  end

  def show
    @pol = Pol.find(params[:id])
  end

end
