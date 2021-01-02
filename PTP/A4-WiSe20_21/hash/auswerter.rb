require_relative "kasse_leser"
require "Set"
class Auswerter

  def initialize()
    @kasse = KasseLeser.new().als_hash()
  end

  def [](nr)
    return @kasse[nr]
  end

  def in_flaches_array()
    # TODO
    return []
  end

  def alle_produkte()
    # TODO
    return Set.new()
  end

  def wert(positionen)
    # TODO
  end

  def in_bestellung_mit_wert()
    # TODO
    return []
  end

  def gesamt_bestellwert()
    # TODO
    return 0
  end

  def hoechste_bestellung()
    # TODO
    return "UNKNOWN"
  end

  def anzahl_produkte(pos_hash)
    # TODO
    return 0
  end

  def umfangreichste_bestellung()
    # TODO
    return "UNKNOWN"
  end

  def in_produkte_mit_gesamt_bestellwert()
    # TODO
      return Hash.new(0)
  end

  def produkte_mit_gesamt_bestellanzahl()
    # TODO
    return Hash.new(0)
  end

  def sortiere_produkte_nach_anzahl_name()
    # TODO
    return []
  end

  def sortiere_produkte_nach_anzahl_name_absteigend()
    # TODO
    return []
  end

end



