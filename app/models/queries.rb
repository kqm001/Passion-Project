class Queries < ActiveRecord::Base
  validates :barcode, :presence => true
  validate :is_integer_string, :is_thirteen_characters

  def is_integer_string
    if :barcode.to_i == 1 || :barcode.to_i == 0
      errors.add(:barcode, "can only be numerical characters")
    end
  end

  def is_thirteen_characters
    if barcode.length != 13
      errors.add(:barcode, "needs to be a 13 digits long")
    end
  end
end
