require './Rechteck'
require './Kreis'

class KlasseAktiv

  def initialize(pos_x=0, pos_y=0)
    # die präsentierten Inhalte anzeigt

    @smile_head=Kreis.new(pos_x=6, pos_y=6, radius=6, farbe=:red)
    @smile_mouth=Kreis.new(pos_x=6, pos_y=7,radius=3 , farbe=:blue)
    @smile_maske=Rechteck.new(pos_x=2, pos_y=4, breite=9, hoehe=2, farbe=:red)
    @smile_eye_l=Kreis.new(pos_x=3, pos_y=4, radius=1, farbe=:blue)
    @smile_eye_r=Kreis.new(pos_x=8, pos_y=4, radius=1, farbe=:blue)
    #@first_pose_smile_head=@smile_head.mittelpunkt()
    #@first_pose_mouth=@smile_mouth.mittelpunkt()
    #@first_pose_maske=@smile_maske.obere_linke_ecke()
    #@first_pose_eye_l=@smile_eye_l.mittelpunkt()
    #@first_pose_eye_r=@first_pose_eye_r.mittpunkt()
  end

  def sichtbar_machen()
    @smile_head.sichtbar_machen
    @smile_mouth.sichtbar_machen
    @smile_maske.sichtbar_machen
    @smile_eye_l.sichtbar_machen
    @smile_eye_r.sichtbar_machen

  end

  def unsichtbar_machen()
    @smile_head.unsichtbar_machen
    @smile_maske.unsichtbar_machen
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
    @smile_maske.bewegen(delta_x, delta_y,wdh, wdh_nach,starten_nach)
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

  def animieren(direction=1, delay=0)

    @smile_maske.bewegen(delta_x=5*direction, 0,50, 10,delay)
    @smile_head.bewegen(delta_x=5*direction, 0,50, 10,delay)
    @smile_eye_l.bewegen(delta_x=5*direction, 0,50, 10,delay)
    @smile_eye_r.bewegen(delta_x=5*direction, 0,50, 10,delay)
    @smile_mouth.bewegen(delta_x=5*direction, 0,50, 10,delay)
    delay=delay+30
    direction=direction*(-1)
    @smile_maske.bewegen(delta_x=5*direction, 0,50, 10,delay)
    @smile_head.bewegen(delta_x=5*direction, 0,50, 10,delay)
    @smile_eye_l.bewegen(delta_x=5*direction, 0,50, 10,delay)
    @smile_eye_r.bewegen(delta_x=5*direction, 0,50, 10,delay)
    @smile_mouth.bewegen(delta_x=5*direction, 0,50, 10,delay)
  end

  def in_schwarz_weiss_aendern()

    @smile_head.farbe_aendern("hellgrau")
    @smile_mouth.farbe_aendern('schwarz')
    @smile_maske.farbe_aendern("hellgrau")
    @smile_eye_l.farbe_aendern('schwarz')
    @smile_eye_r.farbe_aendern('schwarz')


  end

  def in_farbig_aendern()
    @smile_head.farbe_aendern('rot')
    @smile_mouth.farbe_aendern('blau')
    @smile_maske.farbe_aendern('rot')
    @smile_eye_l.farbe_aendern('blau')
    @smile_eye_r.farbe_aendern('blau')

  end

  def zuruecksetzen(ziel_x,ziel_y)

    @smile_head.auf_position_setzen(ziel_x = 6, ziel_y =6)
    @smile_mouth.auf_position_setzen(ziel_x=6, ziel_y=6)
    #@smile_maske.auf_position_setzen(ziel_x=2, ziel_y=4)
    @smile_eye_l.auf_position_setzen(ziel_x=3, ziel_y=4)
    @smile_eye_r.auf_position_setzen(ziel_x=8, ziel_y=4)

  end


  # TODO Hier die Methoden implementieren
  #end


end