require "./Rechteck"
require "./Kreis"
require "./Dreieck"
require "./Leinwand"

class Klasse3
  def initialize()
    @haus = Rechteck.new(20, 80, 120, 100, :blue)
    @roof = Dreieck.new(0, 80,80,160, :blue)
    @foundation = Rechteck.new(10, 180, 140, 15, :blue)
  end

  def sichtbar_machen()
    @fir_stem.sichtbar_machen
    @fir_top.sichtbar_machen
    @fir_mid.sichtbar_machen
    @fir_base.sichtbar_machen
  end

  #def position()
  #top=@fit_top.

  #end



  # TODO Hier die Methoden implementieren


end