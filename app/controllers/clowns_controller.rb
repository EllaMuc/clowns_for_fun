class ClownsController < ApplicationController

  def show
    @clown = Clown.find(params[:id])
  end
end
