class WelcomeController < ApplicationController
  def index
  	@homeland = "Italy"
  	@countries = ["Germany", "France", "Spain", "Poland", "England", "Canada", "Sweden"]
  	@images = ["italy.jpg", "france.jpg", "spain.jpg", "canada.jpg"]
  	@cities = ["Paris", "Nice", "Wellington", "Nova_Scotia"]
  	@country = ["France", "France", "New_Zealand", "Canada"]
    @united_states = {"capital city" => "Washington, DC", 
                     "favorite city" => "Asheville, NC", 
                     "favorite state" => "Oregon", 
                     "flag colors" => ["red", "white", "blue"]}

  	#@destinations = {"Paris" => "France", "Nice" => "France", "Wellington" => "New Zealand", "Nova Scotia" => "Canada"}
  end


  def about
  	@color = params[:color]
  	@size = params[:size].to_i
  end

  def contact
  end


  
end
