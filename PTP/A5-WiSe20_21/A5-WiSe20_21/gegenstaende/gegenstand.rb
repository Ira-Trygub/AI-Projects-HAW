class Gegenstand
  def initialize(name)
    @name = name
    #@gewicht = gewicht
    #@effekt = effekt
    #@reichweite = reichweite
    #@verbraucht_sich = false
  end

  def to_s(kurzform = false)
    if kurzform == false
      "#{self.class}: #{@name} + gegenstand_to_s_lang"
    else
      "#{self.class}[0..1]. + gegenstand_to_s_kurz"
    end
  end


  def gegenstand_to_s_lang #Hook Methode
    ""
  end

  def gegenstand_to_s_kurz #Hook Methode
    ""
  end

end