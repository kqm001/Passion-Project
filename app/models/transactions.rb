class Transactions < ActiveRecord::Base
  validates :user_id, :presence => true

  has_one :result
  belongs_to :users
end
