class PagesController < ApplicationController
  def index
    @clown = Clown.all
  end
  def create
    @clown = Clown.create
  end
end
