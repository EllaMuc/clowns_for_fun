class PagesController < ApplicationController
  def index
    @clowns = Clown.all
  end
  def create
    @clown = Clown.create
  end
end
