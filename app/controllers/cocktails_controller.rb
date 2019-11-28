class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktails = Cocktail.find(params[:id])
  end

  def new
    @cocktails = Cocktail.new
  end

  def create
    @cocktails = Cocktail.create(cocktail_params)
    redirect_to cocktail_path(@cocktails)
  end

  private

  def cocktail_params
    params.require(:cocktails).permit(:name)
  end
end
