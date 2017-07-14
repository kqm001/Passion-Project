class Results < ActiveRecord::Base
  validates :material_id, :queries_id, :presence => true

  has_many :materials
  has_many :queries
  has_one :transaction
end
