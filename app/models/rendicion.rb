class Rendicion < ApplicationRecord
  has_many :expenses
  belongs_to :users
end
