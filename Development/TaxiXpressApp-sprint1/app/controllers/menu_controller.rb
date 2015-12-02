class MenuController < ApplicationController
  def index
    #Obtaining category collection
    @categories = Category.all
    
  end
end
