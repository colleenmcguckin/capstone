class Key < ActiveRecord::Base
  has_many :songs
  belongs_to :chord_by_key
end
