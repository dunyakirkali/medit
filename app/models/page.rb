class Page < ApplicationRecord
  has_many :blocks
  accepts_nested_attributes_for :blocks, reject_if: :all_blank, allow_destroy: true
end
