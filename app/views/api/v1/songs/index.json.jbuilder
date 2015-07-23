json.songs @songs do |song|
  json.id song.id
  json.title song.name
  json.time_signature song.time_signature.name
  json.key_signature song.key.tonic
  json.tempo song.tempo.bpm
  json.structure song.structures
  json.lyrics song.lyrics
end