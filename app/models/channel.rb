class Channel < ApplicationRecord
  has_many :show_times
  has_many :shows, through: :show_times
end
