class Bewohner
  def initialize(name, lebenspunkte, effekt)
    @name = name
    @lebenspunkte = lebenspunkte
    @effekt = effekt
  end

  def to_s(kurzform = false)
    if kurzform == false
      "Ich #{self.class} #@name(#@lebenspunkte lp)" + bewohner_to_s() + "#@effekt lp"
    else
      "#{self.class}[0] #@lebenspunkte #@effekt"
    end


    def bewohner_to_s #Hook Methode
      ""
    end
  end
end