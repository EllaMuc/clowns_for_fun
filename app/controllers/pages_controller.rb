class PagesController < ApplicationController
  def index
    @clowns = Clown.all
  end

end
