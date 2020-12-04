require "./Rechteck"
require "./Kreis"
require "./Dreieck"
require "./Leinwand"

class Klasse1
  def initialize()
    @fir_stem = Rechteck.new(40, 120, 20, 20, :brown)
    @fir_top = Dreieck.new(50,30, 30, 60, :green)
    @fir_mid = Dreieck.new(50, 55, 40, 80, :green)
    @fir_base = Dreieck.new(50, 80,45, 90,  :green)
  end

  def sichtbar_machen()
    @fir_stem.sichtbar_machen
    @fir_top.sichtbar_machen
    @fir_mid.sichtbar_machen
    @fir_base.sichtbar_machen
  end

  def unsichtbar_machen()
    @fir_stem.unsichtbar_machen
    @fir_top.unsichtbar_machen
    @fir_mid.unsichtbar_machen
    @fir_base.unsichtbar_machen
  end

  def position()
    base = @fir_stem.obere_linke_ecke()
    x = base.x()+(@fir_base.hoehe())/2
    y = base.y()+@fir_base.breite()
    return Punkt.new(x,y)
  end

  def auf_position_setzen(ziel_x, ziel_y)
    x_delta = ziel_x-position().x()
    y_delta = ziel_y-position().y()
    bewegen(x_delta, y_delta,1, 1,0)
  end

  def bewegen(delta_x, delta_y, wdh, wdh_nach, starten_nach)
    @fir_stem.bewegen(delta_x, delta_y, wdh, wdh_nach, starten_nach)
    @fir_base.bewegen(delta_x, delta_y, wdh, wdh_nach, starten_nach)
    @fir_mid.bewegen(delta_x, delta_y, wdh, wdh_nach, starten_nach)
    @fir_top.bewegen(delta_x, delta_y, wdh, wdh_nach, starten_nach)
  end

  def in_schwarz_weiss_aendern()
    @fir_stem.farbe_aendern('schwarz')
    @fir_base.farbe_aendern('schwarz')
    @fir_mid.farbe_aendern('schwarz')
    @fir_top.farbe_aendern('schwarz')
  end

  def in_farbig_aendern()
    @fir_stem.farbe_aendern('braun')
    @fir_base.farbe_aendern('gruen')
    @fir_mid.farbe_aendern('gruen')
    @fir_top.farbe_aendern('gruen')
  end



end