class EmailsController < ApplicationController
  respond_to :html, :js

  def create
    @email = current_user.emails.build(params[:email])
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
