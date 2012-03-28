class EmailsController < ApplicationController
  respond_to :html, :js
  def create
    @email = Email.new(params[:email])
    @email.user = current_user;
    @email.save

    respond_with @email, :location => emails_url

  end
  def index
    @emails = current_user.emails
  end

  def update
  end

  def delete
  end

  def edit
  end
end
