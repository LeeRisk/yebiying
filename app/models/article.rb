class Article < ActiveRecord::Base
  belongs_to :topic
  has_many :images, as: :imageable
  has_many :comments
  belongs_to :user

end
