class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def hello
      render html: "hi hi hi people¡"
  end
  
  def goodbye
      render html: "goodbye people"
  end
end
