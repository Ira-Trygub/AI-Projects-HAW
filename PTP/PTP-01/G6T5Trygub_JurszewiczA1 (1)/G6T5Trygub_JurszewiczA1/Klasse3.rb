require "./Rechteck"
require "./Kreis"
require "./Dreieck"
require "./Leinwand"

class Klasse3
  def initialize()
    @present = Rechteck.new(0,0,20,20, :red)
    @ribbon1 = Rechteck.new(12, 0,5,20, :blue)
    @ribbon2 = Rechteck.new(0, 10, 20,5, :blue)
  end

  def sichtbar_machen()
    @present.sichtbar_machen
    @ribbon1.sichtbar_machen
    @ribbon2.sichtbar_machen
  end

  def unsichtbar_machen()
    @present.unsichtbar_machen
    @ribbon1.unsichtbar_machen
    @ribbon2.unsichtbar_machen
  end

  def position()
    base = @present.obere_linke_ecke()
    x = base.x()+(@present.hoehe())/2
    y = base.y()+@present.breite()
    return Punkt.new(x,y)
  end

  def bewegen(delta_x, delta_y, wdh, wdh_nach, starten_nach)
    @present.bewegen(delta_x, delta_y,wdh, wdh_nach, starten_nach)
    @ribbon1.bewegen(delta_x, delta_y,wdh, wdh_nach, starten_nach)
    @ribbon2.bewegen(delta_x, delta_y,wdh, wdh_nach, starten_nach)
  end

  def auf_position_setzen(ziel_x, ziel_y)
    x_delta = ziel_x - position().x()
    y_delta = ziel_y - position().y()
    bewegen(x_delta, y_delta,1, 1,0)
  end

  def in_schwarz_weiss_aendern()
    @present.farbe_aendern('hellgrau')
    @ribbon1.farbe_aendern('grau')
    @ribbon2.farbe_aendern('grau')
  end

  def in_farbig_aendern()
    @present.farbe_aendern('rot')
    @ribbon1.farbe_aendern('blau')
    @ribbon2.farbe_aendern('blau')
  end


end
