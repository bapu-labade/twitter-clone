class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, 
                  :twitter_name

  # Associations
  has_many :tweets

  acts_as_followable
  
  acts_as_follower

  # Callbacks

  before_create :set_twitter_name


  private

    def set_twitter_name
      self.twitter_name = "@" + self.username.strip.downcase
    end

end
