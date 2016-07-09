class Block < ApplicationRecord
  has_many :connections
  has_many :pages, through: :connections

end
