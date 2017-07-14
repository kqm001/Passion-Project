class Query < ActiveRecord::Base
  validates :barcode, :presence => true
  validate :is_integer_string, :is_twelve_characters

  def is_integer_string
    if barcode.to_i == 1 || barcode.to_i == 0
      errors.add(:barcode, "can only be numerical characters")
    end
  end

  def is_twelve_characters
    if barcode.length != 12
      errors.add(:barcode, "needs to be a 12 digits long")
    end
  end

  belongs_to :user
  has_many :results
end
