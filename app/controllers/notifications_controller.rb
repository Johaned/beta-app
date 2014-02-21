class NotificationsController < ApplicationController
  #-------------------------------------------# 
  # Mandrill Webhook
  #-------------------------------------------#
  def inbound_email
    puts '--> crocodoc notification'
    payload = JSON.parse(params[:payload])
  	respond_to do |format|
  	  format.html { render :nothing => true }
  	  format.json { head :no_content }
  	end
  end
end