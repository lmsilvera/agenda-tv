class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorites
  has_many :show_times, through: :favorites
  # has_many :shows, through: :show_times
end
