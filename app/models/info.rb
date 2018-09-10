class Info < ApplicationRecord
  has_many :images
  def to_param
    link
  end
end
