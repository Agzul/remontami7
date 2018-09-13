class Info < ApplicationRecord
  has_many :images, dependent: :destroy

  def to_param
    link
  end
end
