class BreweriesController < ApplicationController

  # GET /breweries
  def index
    @breweries = Brewery.all
  end

  # GET /breweries/1
  def show
    @brewery = Brewery.find(params[:id])
    @beer = Beer.new
  end

  # GET /breweries/new
  def new
    @brewery = Brewery.new
  end

  # POST /breweries
  def create
    @brewery = Brewery.new(brewery_params)
    if @brewery.save
      redirect_to brewery_path(@brewery)
    else
      render :new
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def brewery_params
    params.require(:brewery).permit(:name)
  end

end
