require "./Rechteck"
require "./Kreis"
require "./Dreieck"
require "./Leinwand"

class Klasse3

  def initialize()
    @present=Rechteck.new(0,0,20,20, :red)
    @ribbon1=Rechteck.new(12, 0,5,20, :blue)
    @ribbon2=Rechteck.new(0, 10, 20,5, :blue)
  end

  def sichtbar_machen()
    @present.sichtbar_machen
    @ribbon1.sichtbar_machen
    @ribbon2.sichtbar_machen
  end


end
