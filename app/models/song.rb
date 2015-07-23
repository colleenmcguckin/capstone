class Song < ActiveRecord::Base
  belongs_to :user
  belongs_to :time_signature
  belongs_to :tempo
  belongs_to :key
  has_many :elements
  has_many :structures
  has_many :lyrics
end
