class Vote < ActiveRecord::Base
  has_many :pols, through: :districts
  has_many :districts
end
