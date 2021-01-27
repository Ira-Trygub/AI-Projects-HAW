

class Waffe  < Gegenstand

  attr_reader :effekt,:reichweite,:verbraucht_sich

  def initialize(name, gewicht, effekt,reichweite=effekt,verbraucht_sich= false)

    super(name)
    @gewicht = gewicht
    @effekt = effekt
    @reichweite = reichweite
    @verbraucht_sich = verbraucht_sich
  end

  #def to_s(kurzform=false)

  #end

  def gegenstand_to_s_lang
    "(#{@gewicht} kg) kostet #{@effekt}lp Reichweite #{@reichweite}lp"
  end

  def gegenstand_to_s_kurz #Hook Methode
    "#{@gewicht}.#{@effekt}.#{@reichweite}"
  end

end


