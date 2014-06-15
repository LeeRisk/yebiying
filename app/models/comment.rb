class Comment < ActiveRecord::Base
  belongs_to :article
  belongs_to :user
  belongs_to :owner, :class_name => "User", :foreign_key => :user_id

  private


end
