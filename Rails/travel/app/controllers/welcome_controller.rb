class WelcomeController < ApplicationController
  def index
  	@homeland = "Italy"
  	@countries = ["Germany", "France", "Spain", "Poland", "England", "Canada", "Sweden"]
  	@images = ["italy.jpg", "france.jpg", "spain.jpg", "canada.jpg"]
  	@cities = ["Paris", "Nice", "Wellington", "Nova_Scotia"]
  	@country = ["France", "France", "New_Zealand", "Canada"]

  	#@destinations = {"Paris" => "France", "Nice" => "France", "Wellington" => "New Zealand", "Nova Scotia" => "Canada"}
  end


  def about
  	@color = params[:color]
  	@size = params[:size].to_i
  end
end
