class Billboard < ApplicationRecord
  has_many :artist
  has_many :songs
end
