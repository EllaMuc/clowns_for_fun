class PagesController < ApplicationController
  def index
    @clown = Clown.all
  end

  def create
    @clown = Clown.create
  end

  def update
    if @clown.update(clown_params)
      redirect_to @clown
    else
    render :edit, status: :unprocessable_entity

    end
  end

  def destroy
    @clown.destroy
  redirect_to clown_url
  end
end
