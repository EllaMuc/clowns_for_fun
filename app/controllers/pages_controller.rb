class PagesController < ApplicationController
  def index
    @clown = Clown.all
  end
end
