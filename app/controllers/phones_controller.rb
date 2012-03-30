class PhonesController < ApplicationController
  respond_to :html, :js

  def create
    @phone = current_user.phones.build(params[:phone])
    @phone.save

    respond_with @phone, :location => phones_url
  end
  def destroy
    @phone = current_user.phones.find(params[:id])
    @phoneid = @phone.id
    @phone.destroy
    rescue ActiveRecord::RecordNotFound


    respond_with :phoneid => @phoneid, :location => phones_url
  end
end
