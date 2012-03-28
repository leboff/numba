class HomeController < ApplicationController
  def index
    @emails = current_user.emails
    @listings = current_user.listings
    respond_to do |format|
      format.html
    end
  end
end
