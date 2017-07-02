class WelcomeController < ApplicationController
  def index
    @images = Dir.glob("app/assets/images/carousel/*.jpg")
  end
  
end