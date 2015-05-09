class AddTwitterNameToUser < ActiveRecord::Migration
  def change
  	add_column :users, :twitter_name, :string, :after => :username
  end
end
