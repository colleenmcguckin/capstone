class StructuresController < ApplicationController

  def new
  end

  def create
    element_1 = params[:element_1][:element_library_id]
    @length_1 = params[:length][:length_id_1].to_i
    element_2 = params[:element_1][:element_library_id]
    @length_2 = params[:length][:length_id_2].to_i
    song_id = params[:song_id]

    @song = Song.find_by(id: song_id)

    position = 1

    @length_1.times do 
      Structure.create(position: position, element_library_id: element_1, song_id: song_id)
      position += 1
    end

    @length_2.times do
      Structure.create(position: position, element_library_id: element_2, song_id: song_id)
      position += 1
    end

  end

  def update
    @length_1 = params[@length_1].to_i
    position = 1
    @length_1.times do
      Structure.update.where(position: "position").update(chord_id: "chord_id")
      position += 1
    end
    redirect_to "/songs/new"
  end

end
