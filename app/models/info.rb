class Info < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true

  def to_param
    link
  end
end
