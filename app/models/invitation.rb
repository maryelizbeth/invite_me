class Invitation < ActiveRecord::Base
  attr_accessible :recipient_email, :sender_id, :token
end
