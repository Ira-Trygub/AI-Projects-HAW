require './Rechteck'
require './Kreis'

class KlasseAktiv

  def initialize(pos_x=0, pos_y=0)
    # die präsentierten Inhalte anzeigt
    @smile_head=Kreis.new(pos_x=300, pos_y=243, radius=18, farbe=:red)
    @smile_eye_l=Kreis.new(pos_x=294, pos_y=240, radius=3, farbe=:blue)
    @smile_eye_r=Kreis.new(pos_x=306, pos_y=240, radius=3, farbe=:blue)
    @smile_mouth=Rechteck.new(pos_x=296, pos_y=250, hoehe=8, breite=1, farbe=:blue)

  end

  def sichtbar_machen()
    @smile_head.sichtbar_machen
    @smile_eye_l.sichtbar_machen
    @smile_eye_r.sichtbar_machen
    @smile_mouth.sichtbar_machen
  end

  def animieren()
    @smile_head.horizontal_bewegen(100)
    @smile_eye_l.horizontal_bewegen(100)
    @smile_eye_r.horizontal_bewegen
    @smile_mouth.horizontal_bewegen

  # TODO Hier die Methoden implementieren
  end


end