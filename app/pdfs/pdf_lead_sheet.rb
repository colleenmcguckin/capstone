class PdfLeadSheet < Prawn::Document
  
def initialize(id)
  song = Song.find_by(id: id)
  logo = "#{Rails.root}/app/assets/images/notebook-nav-icon.png"

  super(left_margin: 40)
    image logo, :scale => 0.5 

    move_down 8

    text song.name, :align => :center, :size => 40, :scale => 0.5

    move_down 10

    text "Key: " + song.key.tonic + "   Time Signature: " + song.time_signature.name + "   Tempo: " + song.tempo.bpm.to_s + " bpm", :align => :center

    move_down 20

    

    stroke do 
      horizontal_line 148, 380, :at => 635, :color => "#0000FF"
    end
end



end