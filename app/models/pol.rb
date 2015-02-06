class Pol < ActiveRecord::Base
  has_many :votes, through: :districts
  has_many :districts
end
