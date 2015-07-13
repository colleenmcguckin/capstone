class Chord < ActiveRecord::Base
  has_many :chord_by_key
  belongs_to :structure
  has_many :keys, through: :chord_by_key
end

