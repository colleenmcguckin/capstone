class StructuresController < ApplicationController

  def index
    
  end
  
  def new
    @song_id = params[:song]
  end

  def create

  end

  def update
    @length_1 = params[:length_1].to_i
    position = 1
    p params[:chord][:chord_id]
    ((Song.find_by(params[:id]).time_signature.beat_unit)*(@length_1)).times do
      Structure.find_by(song_id: params[:id], position: position).update(chord_id: params[:chord][:chord_id])
      position += 1
    end
    redirect_to "/structures/#{params[:id]}"
  end

  def show
    @song = Song.find_by(id: params[:id])
  end
end
