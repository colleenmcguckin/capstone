class Chord < ActiveRecord::Base
  belongs_to :chord_by_key
  belongs_to :structure
end
