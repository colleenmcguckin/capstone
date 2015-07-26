class Api::V1::SongsController <ApplicationController

  def index
    @songs = Song.all
    @keys = Key.all
    @time_signatures = TimeSignature.all
    @tempos = Tempo.all
    @elements = ElementLibrary.all
  end

  def create
    @song = Song.new(name: params[:title], key_id: params[:key], time_signature_id: params[:time_signature], tempo_id: params[:tempo])
    if @song.save
      render json: { song_id: @song.id }, status: 200
    else
      render json: { errors: @release.errors.full_messages }, status: 422
    end
  end

end