class ChordByKeysController < ApplicationController
  has_many :keys
  has_many :chords
end
