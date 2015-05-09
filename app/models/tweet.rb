class Tweet < ActiveRecord::Base
  attr_accessible :content, :user_id

  # Associations

  belongs_to :user
  
end
