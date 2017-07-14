class Materials < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :information, :presence => true

  belongs_to :results
end
