class Company < ApplicationRecord
  has_many :departments
  has_many :branch_offices
end
