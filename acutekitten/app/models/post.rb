class Post < ActiveRecord::Base
  belongs_to :user
  attachment :image
end
