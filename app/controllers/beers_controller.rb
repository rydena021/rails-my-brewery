class BeersController < ApplicationController
  before_action :set_brewery

  def create
    @beer = Beer.new(beer_params)
    @beer.brewery = @brewery
    if @beer.save
      redirect_to brewery_path(@brewery), :notice => 'Beer Added!'
    else
      @brewery = Brewery.find(params[:brewery_id])
      redirect_to brewery_path(@brewery), :notice => 'Invalid Entry'
    end
  end

  def destroy
    @beer = Beer.find(params[:id])
    @beer.destroy
    redirect_to brewery_path(@brewery)
  end

  private

  def set_brewery
    @brewery = Brewery.find(params[:brewery_id])
  end

  def beer_params
    params.require(:beer).permit(:name, :description, :style_id)
  end

end
