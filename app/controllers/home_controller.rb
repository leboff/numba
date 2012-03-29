class HomeController < ApplicationController
  def index
    @emails = Email.all
    @listings = current_user.listings
    respond_to do |format|
      format.html
    end
  end
end
