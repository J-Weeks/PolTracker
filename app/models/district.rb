class District < ActiveRecord::Base
  belongs_to :vote
  belongs_to :pol

  def self.search(search)
    where("zip LIKE ?", "%#{search}%")
  end
end
