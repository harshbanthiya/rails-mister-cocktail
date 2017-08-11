class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all 
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
    @cocktail.doses.build
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(cocktail_params)
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy 
  end

  private

  def cocktail_params
   params.require(:cocktail).permit(:name, :photo, :photo_cache, doses_attributes: [:id, :description, :ingredient_id, :_destroy])
  end
  
end
