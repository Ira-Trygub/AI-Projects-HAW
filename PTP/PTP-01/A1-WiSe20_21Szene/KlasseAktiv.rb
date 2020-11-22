require './Rechteck'
require './Kreis'

class KlasseAktiv

  def initialize(pos_x=0, pos_y=0)
    # die präsentierten Inhalte anzeigt
    @smile_head=Kreis.new(pos_x=20, pos_y=20, radius=18, farbe=:red)
    @smile_eye_l=Kreis.new(pos_x=14, pos_y=20, radius=3, farbe=:blue)
    @smile_eye_r=Kreis.new(pos_x=26, pos_y=20, radius=3, farbe=:blue)
    @smile_mouth=Rechteck.new(pos_x=16, pos_y=30, hoehe=8, breite=1, farbe=:blue)

  end

  def sichtbar_machen()
    @smile_head.sichtbar_machen
    @smile_eye_l.sichtbar_machen
    @smile_eye_r.sichtbar_machen
    @smile_mouth.sichtbar_machen
  end

  def unsichtbar_machen()
    @smile_head.unsichtbar_machen
    @smile_eye_l.unsichtbar_machen
    @smile_eye_r.unsichtbar_machen
    @smile_mouth.unsichtbar_machen
  end

  def position()
    sm_center=@smile_head.mittelpunkt()
    x = sm_center.x()
    y = sm_center.y()
    return Punkt.new(x,y)
  end

  def bewegen(delta_x, delta_y,wdh, wdh_nach,starten_nach)
    @smile_head.bewegen(delta_x, delta_y,wdh, wdh_nach,starten_nach)
    @smile_eye_l.bewegen(delta_x, delta_y,wdh, wdh_nach,starten_nach)
    @smile_eye_r.bewegen(delta_x, delta_y,wdh, wdh_nach,starten_nach)
    @smile_mouth.bewegen(delta_x, delta_y,wdh, wdh_nach,starten_nach)
  end

  def auf_position_setzen(ziel_x, ziel_y)
    x_delta = ziel_x - position().x()
    y_delta = ziel_y - position().y()
    bewegen(x_delta, y_delta,1, 1,0)
  end

  def animieren()
    @smile_head.bewegen(10, 0,50, 10,1)
    @smile_eye_l.bewegen(10, 0,50, 10,1)
    @smile_eye_r.bewegen(10, 0,50, 10,1)
    @smile_mouth.bewegen(10, 0,50, 10,1)
    @smile_head.bewegen(-10, 0,50, 10,30)
    @smile_eye_l.bewegen(-10, 0,50, 10,30)
    @smile_eye_r.bewegen(-10, 0,50, 10,30)
    @smile_mouth.bewegen(-10, 0,50, 10,30)
  end

  def in_schwarz_weiss_aendern()
    @smile_head.farbe_aendern('grau')
    @smile_eye_l.farbe_aendern('schwarz')
    @smile_eye_r.farbe_aendern('schwarz')
    @smile_mouth.farbe_aendern('schwarz')

  end

  def in_farbig_aendern()
    @smile_head.farbe_aendern('rot')
    @smile_eye_l.farbe_aendern('blau')
    @smile_eye_r.farbe_aendern('blau')
    @smile_mouth.farbe_aendern('blau')
  end


  # TODO Hier die Methoden implementieren
  #end


end