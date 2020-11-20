require "./Rechteck"
require "./Kreis"
require "./Dreieck"
require "./Leinwand"

class Klasse1
  def initialize()
    @fir_stem = Rechteck.new(pos_x = 285, pos_y = 280, hoehe = 30, breite = 60, farbe = :brown)
    @fir_top = Dreieck.new(pos_x = 300, pos_y = 130, hoehe = 70, breite = 80, farbe = :green)
    @fir_mid = Dreieck.new(pos_x = 300, pos_y = 150, hoehe = 100, breite =100, farbe = :green)
    @fir_base = Dreieck.new(pos_x = 300, pos_y = 180, hoehe = 130, breite = 140, farbe = :green)

  end

  def sichtbar_machen()
    @fir_stem.sichtbar_machen
    @fir_top.sichtbar_machen
    @fir_mid.sichtbar_machen
    @fir_base.sichtbar_machen
  end

  def position()
    top=@fit_top.

  end



  # TODO Hier die Methoden implementieren


end