class StructuresController < ApplicationController

  def index
    
  end
  
  def new
    @song_id = params[:song]
  end

  def create

  end

  def edit
    
  end

  def update

    @song = Song.find_by(id: params[:id])
    puts "aSFDDSAFSAFSAF"
    params[:structures].each do |structure_id, chord_hash|
      Structure.find_by(id: structure_id).update(chord_id: chord_hash["chord_id"])
    end
    # length = @song.structures.order(:position).count
    # position = 1
    # length.times do
    #   Structure.find_by(song_id: params[:id], position: position).update(chord_id: params[:structures][:chord_id])
    #   position += 1
    # end

    line_counter = 1
    params[:lyrics].each do |line_number, lyrics|
      Lyric.create(line_number: (line_number.to_i + 1), lyric: lyrics)
      line_counter += 1
    end



    beat_unit = @song.time_signature.beat_unit
    structures = @song.structures.order(:position)
    @lines = []
    measures = structures.each_slice(beat_unit).to_a
    index = 0
    while index < measures.count
      line = []
      current_element_id = measures[index][0].element_library_id
      4.times do
        break unless measures[index]
        break if measures[index][0].element_library_id != current_element_id
        line << measures[index]
        index += 1
      end
      @lines << line
    end

    # @lines.count.times do
    #   Lyric.create(song_id: params[:id], line_number: line_number, lyric: params[:lyric]))
    #   line_number += 1
    # end


    # Lyric.create(song_id: params[:id], line_number: line_number, lyric: params[:lyric])



    redirect_to "/structures/#{params[:id]}"
  end

  def show
    @song = Song.find_by(id: params[:id])
  end
end
