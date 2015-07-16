class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @tonics = Key.all
  end

  def create
    @song = Song.create({name: params[:name], time_signature_id: params[:time_signature][:time_signature_id], tempo_id: params[:tempo][:tempo_id], key_id: params[:key][:key_id]})

    redirect_to "/structures/new?song=#{@song.id}"
  end

  def show
  end
end
