require "./Rechteck"
require "./Kreis"
require "./Dreieck"
require "./Leinwand"

class Klasse2
  def initialize()
    @haus = Rechteck.new(20, 80, 120, 100, :blue)
    @roof = Dreieck.new(80, 0,80,160, :blue)
    @foundation = Rechteck.new(10, 180, 140, 15, :orange)
  end

  def sichtbar_machen()
    @haus.sichtbar_machen
    @roof.sichtbar_machen
    @foundation.sichtbar_machen
  end

  def unsichtbar_machen()
    @haus.unsichtbar_machen
    @roof.unsichtbar_machen
    @foundation.unsichtbar_machen
  end

  def position()
    found=@foundation.obere_linke_ecke()
    x = found.x() + (@foundation.breite())/2
    y = found.y() + @foundation.hoehe()
    return Punkt.new(x,y)
  end

  def bewegen(delta_x, delta_y,wdh, wdh_nach,starten_nach)
    @foundation.bewegen(delta_x, delta_y,wdh, wdh_nach,starten_nach)
    @haus.bewegen(delta_x, delta_y,wdh, wdh_nach,starten_nach)
    @roof.bewegen(delta_x, delta_y,wdh, wdh_nach,starten_nach)
  end

  def auf_position_setzen(ziel_x, ziel_y)
    x_delta = ziel_x - position().x()
    y_delta = ziel_y - position().y()
    bewegen(x_delta, y_delta,1, 1,0)
  end

  def in_schwarz_weiss_aendern()
    @foundation.farbe_aendern('schwarz')
    @haus.farbe_aendern('grau')
    @roof.farbe_aendern('grau')
  end

  def in_farbig_aendern()
    @foundation.farbe_aendern('orange')
    @haus.farbe_aendern('blau')
    @roof.farbe_aendern('blau')

  end



  # TODO Hier die Methoden implementieren


end