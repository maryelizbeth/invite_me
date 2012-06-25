class Invitation < ActiveRecord::Base
  attr_accessible :recipient_email, :sender_id, :token

  belongs_to :sender
  has_one :recipient 


end
