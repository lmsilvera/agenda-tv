class Show < ApplicationRecord
  has_many :show_times
  has_many :channels, through: :show_times
end
