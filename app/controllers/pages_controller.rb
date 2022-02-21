class PagesController < ApplicationController
  def store
    @sneakers = Sneaker.all
  end
end
