class Comment < ActiveRecord::Base
  attr_accessible :message, :user_id, :link_id
  #has_many  :users
  belongs_to  :link
  belongs_to  :user
end