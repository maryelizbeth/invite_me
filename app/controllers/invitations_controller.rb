
class InvitationsController < ApplicationController

  def new
    @invitation = Invitation.new
  end 

  def create 
    @invitation = Invitation.new(params[:invitation])
    @invitation.sender = current_user
    if @invitation.save 
      if logged_in?
        Mailer.deliver_invitation(@invitation, signup_url(@invitation.token))
        flash[:notice] = "Your friends have been invited to join you on this adventure."
        redirect_to root_url
      else 
        flash [:notice] = "Please log in to invite your friends."
        redirect_to root_url
      end 
    else 
      render :action => 'new'
    end   
  end
end
