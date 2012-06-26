class Invitation < ActiveRecord::Base
  attr_accessible :recipient_email, :sender_id, :token

  belongs_to :sender #map sender to users with uid -- sender_id = uid
  has_one :recipient 


end
