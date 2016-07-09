class Page < ApplicationRecord
  has_many :connections
  has_many :blocks, through: :connections, dependent: :destroy

  accepts_nested_attributes_for :blocks, reject_if: :all_blank, allow_destroy: true
end
