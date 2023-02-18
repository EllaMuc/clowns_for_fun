class ClownsController < ApplicationController
  before_action :set_clown

  def show
  end

  private

  def set_clown
    @clown = Clown.find(params[:id])
  end
end
