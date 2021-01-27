
class Teleporter < Gegenstand

  def initialize(name, gewicht, strecke_in_quadranten)
    super(name)
    @strecke_in_quadranten = strecke_in_quadranten
  end


  # def to_s(kurform=false)
  # end
  def gegenstand_to_s_lang
    "(#{@gewicht}kg) überwindet #{@strecke_in_quadranten} Quadranten"
  end

  def gegenstand_to_s_kurz #Hook Methode
    "#{@gewicht}.#{@strecke_in_quadranten}"
  end

end

