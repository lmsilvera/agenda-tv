class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :show

  validates_uniqueness_of :user_id, :scope => [:user_id]
end
