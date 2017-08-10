class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose =Dose.new
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @dose = Dose.new
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
      @dose.destroy
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
      @dose.save
      redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
