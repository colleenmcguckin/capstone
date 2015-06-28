class Structure < ActiveRecord::Base
  has_many :songs
  has_many :chords
  belongs_to :element
  has_many :element_libraries
end
