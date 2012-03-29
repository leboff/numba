class HomeController < ApplicationController
  def index
    @emails = Email.all
    @phones = current_user.phones
    @listings = current_user.listings
    @connections = current_user.connections
    respond_to do |format|
      format.html
    end
  end
end
