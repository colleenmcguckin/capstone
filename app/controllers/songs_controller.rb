class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @tonics = Key.all
  end

  def create
    Song.create({name: params[:name], time_signature_id: params[:time_signature][:time_signature_id], tempo_id: params[:tempo][:tempo_id], key_id: params[:key][:key_id]})
  end


  def creative
    
    
  end

end
