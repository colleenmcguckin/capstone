class StructuresController < ApplicationController

  def new
  end

  def create
    element_1 = params[:element_1][:element_library_id]
    length_1 = params[:length][:length_id_1].to_i
    element_2 = params[:element_1][:element_library_id]
    length_2 = params[:length_2]
    song_id = params[:song_id]

    position = 1
    puts "woah"

    puts length_1
    length_1.times do 
      Structure.create(position: position, element_library_id: element_1, song_id: song_id)
      position += 1
    end

  end
end
