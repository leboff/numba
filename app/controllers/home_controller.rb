class HomeController < ApplicationController
  def index
    @emails = current_user.emails
    respond_to do |format|
      format.html
    end
  end
end
