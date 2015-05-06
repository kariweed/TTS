class WelcomeController < ApplicationController
  def index
  	@homeland = "Italy"
  	@countries = ["Germany", "France", "Spain", "Poland", "England", "Canada", "Sweden"]
  	@images = ["italy.jpg", "france.jpg", "spain.jpg", "canada.jpg"]
  end


  def about
  	@color = params[:color]
  	@size = params[:size].to_i
  end
end
