
class Monster < Bewohner
  def initialize(name, lebenspunkte, effekt)
    super(name, lebenspunkte, effekt)
  end

  def bewohner_to_s
    "koste Dich"
  end
end