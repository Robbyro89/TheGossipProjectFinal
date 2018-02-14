class HomeController < ApplicationController
  def home
    if moussaillon_signed_in?
		#redirect_to gossips_path
  end
end
