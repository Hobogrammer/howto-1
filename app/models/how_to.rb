class HowTo < ActiveRecord::Base
  validates :name, :presence => true

  has_many :steps
end

