class KitabsController < ApplicationController
  def index
    @kitabs = Kitab.all
  end

  def new
    @kitab = Kitab.new
  end

  def create
    Kitab.create(kitab_params)
    redirect_to root_path

  end

  private

  def kitab_params
    params.require(:kitab).permit(:name, :description, :cost)
  end
end
