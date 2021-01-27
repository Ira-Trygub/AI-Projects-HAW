class Tankstelle < Gegenstand

  def initialize(name, liter)
    super(name)
    @liter = liter
  end

  # def to_s(kurzform=false)

  # end

  def gegenstand_to_s_lang
    "(#{@gewicht}kg) Vorrat: #{@liter}liter"
  end

  def gegenstand_to_s_kurz #Hook Methode
    "#{@gewicht}.#{@liter}"
  end
end

