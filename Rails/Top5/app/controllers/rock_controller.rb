class RockController < ApplicationController
  def roll
  	@songs = Song.all
  end
  def index
  	@songs = Song.order(rating: :desc).limit(5)
  end
end
