class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(cocktail_id: @cocktail.id)
  end

  def create
    # binding.byebug
    @dose = Dose.new(get_dose_params)
    if @dose.save
      redirect_to cocktail_path(@dose.cocktail_id)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private

  def get_dose_params
    params.require(:dose).permit(:cocktail_id, :ingredient_id, :description)
  end

  # def get_params
  #   params.require(:dose).permit(:id)
  # end
end
