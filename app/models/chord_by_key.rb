class ChordByKey < ActiveRecord::Base
  has_many :keys
  has_many :chords
end
