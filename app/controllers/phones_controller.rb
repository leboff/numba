class PhonesController < ApplicationController
  respond_to :html, :js

  def create
    @phone = current_user.phones.build(params[:phone])
    @phone.save

    respond_with @phone, :location => phones_url
  end
end
