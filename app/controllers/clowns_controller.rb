class ClownsController < ApplicationController
  before_action :set_clown, only: :show
  def index
    @clowns = Clown.all
  end

  def show
  end


  def edit
  end

  def update
    if @clown.update(clown_params)
      redirect_to @clown
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @clown = Clown.new
  end

  def create
    @clown = Clown.new(clown_params)
    @clown.user = current_user
    if @clown.save
      redirect_to clown_path(@clown)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_clown
    @clown = Clown.find(params[:id])
  end

  def clown_params
    params.require(:clown).permit(:name, :address, :price, :description)
  end
end
