class ClownsController < ApplicationController
  before_action :set_clown

  def show
  end

  def edit
  end 

  def update
    if @clown.update(clown_params)
      redirect_to @clown
    else
      render :edit
    end
  end




  private

  def set_clown
    @clown = Clown.find(params[:id])
  end

  def clown_params
    params.require.(:clown).permit(:name, :address, :price, :description)
  end
end
