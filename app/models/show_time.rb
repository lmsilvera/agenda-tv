class ShowTime < ApplicationRecord
  belongs_to :show
  belongs_to :channel
end
