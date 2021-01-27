class Wertgegenstand  < Gegenstand

  def initialize(name,gewicht,wert)
    super(name)
    @gewicht = gewicht
    @wert = wert

  end

  # def to_s(kurzform=false)

  # end

  def gegenstand_to_s_lang
    "(#{@gewicht}kg) Wert #{@wert}"
  end

  def gegenstand_to_s_kurz #Hook Methode
    "#{@gewicht}.#{@wert}"
  end

end