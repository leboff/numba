class EmailController < ApplicationController
  def create
    @email = Email.new(params[:email])
    @email.user = current_user;
    respond_to do |format|
      if @email.save
        format.html {redirect_to('/', :notice => 'email added successfully')}
        format.js
      else
        format.js
      end

    end
  end

  def update
  end

  def delete
  end

  def edit
  end
end
