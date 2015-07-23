class Structure < ActiveRecord::Base
  belongs_to :songs
  has_many :chords
  belongs_to :element
  has_many :element_libraries
end
