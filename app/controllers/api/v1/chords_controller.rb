class Api::V1::ChordsController <ApplicationController
  def show
    @chords = Song.find_by(id: params[:id]).key.chords
  end
end
