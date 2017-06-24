class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def hello
      render html: "holamundo"
  end
  
  def goodbye
      render html: "goodbye"
  end
end
