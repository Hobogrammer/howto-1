class HowTo < ActiveRecord::Base
  validates :title, :presence => true

  has_many :steps
end

