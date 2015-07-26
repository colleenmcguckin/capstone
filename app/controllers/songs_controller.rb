class SongsController < ApplicationController
  def index
    

    if params[:keysignature] && params[:timesignature]
      @songs = Song.where(key_id: params[:keysignature], time_signature_id: params[:timesignature])
    elsif params[:keysignature]
      @songs = Song.where(key_id: params[:keysignature])
    elsif params[:timesignature]
      @songs = Song.where(time_signature_id: params[:timesignature]) 
    elsif params[:song_name]
      @songs = Song.where("name LIKE (?)",  "%#{params[:song_name]}%" )
    else 
      @songs = Song.all
    end

   
  end

  def new
    @tonics = Key.all
  end

  def create
    @song = Song.create({name: params[:name], time_signature_id: params[:time_signature][:time_signature_id], tempo_id: params[:tempo][:tempo_id], key_id: params[:key][:key_id]})

    
  end

  def show
  end
end
