class ChordsController < ApplicationController
  def new
    @song = Song.find_by(id: params[:song])
    beat_unit = @song.time_signature.beat_unit
    structures = @song.structures.order(:position)
    @lines = []
    measures = structures.each_slice(beat_unit).to_a
    index = 0
    while index < measures.count
      line = []
      current_element_id = measures[index][0].element_library_id
      puts "CURRENT ELEMENT ID: #{current_element_id}"
      4.times do
        break unless measures[index]
        break if measures[index][0].element_library_id != current_element_id
        line << measures[index]
        index += 1
      end
      @lines << line
    end
  end
end
