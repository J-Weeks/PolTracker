class District < ActiveRecord::Base
  belongs_to :vote
  belongs_to :pol
end
