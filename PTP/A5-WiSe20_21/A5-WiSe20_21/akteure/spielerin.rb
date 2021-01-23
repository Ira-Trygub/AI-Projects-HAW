require_relative "rucksack"


class Spielerin

  def initialize(name, aktueller_raum, maximale_tragkraft, lebenspunkte)
    # TODO refaktorisieren
    @name = name
    @lebenspunkte = lebenspunkte
    @aktueller_raum = aktueller_raum
    @rucksack = Rucksack.new(maximale_tragkraft)
  end

  # Räume
  def wechsle_raum(richtung)
    naechster_raum = nachbar(richtung)
    unless naechster_raum.nil?()
      betrete_raum(naechster_raum)
    end
  end

  def betrete_raum(raum)
    @aktueller_raum = raum
    # @aktueller_raum.raum_betreten(self) # Später
    info()
  end

  def im_nachbarraum_umsehen(richtung)
    nachbar = nachbar(richtung)
    unless nachbar.nil?
      puts nachbar
    end
  end

  def nachbar(richtung)
    nachbar = @aktueller_raum.ausgang(richtung)
    if nachbar.nil?
      puts("Kein Ausgang nach #{richtung}")
    end
    return nachbar
  end

  # Gegenstände
  def gegenstand_aufnehmen(gegenstand_name)
    gegenstand = @aktueller_raum.gegenstand_aufheben(gegenstand_name)
    unless gegenstand.nil?
      @rucksack << gegenstand
    end
    info()
  end

  def gegenstand_ablegen(gegenstand_name)
    gegenstand = @rucksack.gegenstand_herausnehmen(gegenstand_name)
    unless gegenstand.nil?
      @aktueller_raum.gegenstand_ablegen(gegenstand)
    end
    info()
  end


  def info()
    puts self
  end

  def to_s(kurzform=false)
    # TODO refaktorisieren
    if kurzform
      "#{self.class.name[0]}.#@lebenspunkte **"
    else
      "Ich #{self.class.name} #{@name}(#{@lebenspunkte}lp) \nim #{@rucksack}"
    end
  end
end


