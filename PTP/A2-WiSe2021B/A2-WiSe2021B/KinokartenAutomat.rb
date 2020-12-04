require "./Tarif"
# Der Kinokarten-Automat Version 1:
#
# Der Automat gibt nur Karten für einen Film aus 
# Es gibt nur einen Einheitspreis (keine Ermäßigungen)
# Der Automat wechselt nicht
# 

# Author::    Birgit Wendholt 
# Copyright Hinweis:: Adaptiert die BlueJ Implementierung des NaivenTicketautomaten von Michael Kölling & David J. Barnes für Ruby und Tcl-TK

class KinokartenAutomat

  # initialize: initialisiert das Objekt der Klasse KinokartenAutomat
  # 
  # Parameter: 
  #   karten_preis: Einheitspreis für alle Kinokarten

  def initialize()
    @eingeworfen = 0
    # Summe aller Einzahlungen für diesen Automat
    @summe_automat = 0
    @tarif = nil
  end

  def tarif_gewaehlt?()
    return @tarif != nil
  end

  def tarif_waehlen(tarif)
    if tarif_gewaehlt?()
      puts ("Es wurde bereits ein Tarif gewählt. Vorgang wird abgebrochen.")
      abbrechen()
    else
      @tarif = tarif.betrag
    end
  end

  def abbrechen()
    bereits_eingeworfen = @eingeworfen
    @tarif = nil
    @eingeworfen = 0
    return bereits_eingeworfen
  end

  def karten_preis
    if !tarif_gewaehlt?()
      puts ("Es wurde noch kein Tarif gewählt. Bitte wählen Sie zuerst einen Tarif aus.")
      return 0
    else
      return @tarif
    end
  end

  # Liefert die Summe aller eingeworfenen Beträge
  def summe_automat()
    return @summe_automat
  end

  # Liefert die bisher gezahlte Summe für ein Ticket
  def eingeworfen()
    return @eingeworfen
  end

  # Nimmt den eingeworfenen Betrag entgegen und erhöht den
  # bisher gezahlten Betrag für eine Kinokarte

  def betrag_einwerfen(betrag)
    if !tarif_gewaehlt?()
      puts ("Es wurde noch kein Tarif gewählt. Bitte wählen Sie zuerst einen Tarif aus.")
    else
      @eingeworfen += betrag
    end
  end


  # Gibt das Wechselgeld zurück und setzt den eingeworfenen Betrag auf 0
  def wechsel_geld()
    restgeld = @eingeworfen - @tarif
    puts("Das Restgeld beträgt " + restgeld.to_s() + " Euro.")
    @eingeworfen = 0
    return restgeld
  end

  # Druckt die Kinokarte
  # Der Druck wird als Ausgabe auf der Konsole simuliert
  # Am Ende des Drucks wir der bisher eingeworfene Betrag wieder auf 0 gesetzt,

  def karte_drucken()
    if !tarif_gewaehlt?()
      puts ("Es wurde noch kein Tarif gewählt. Bitte wählen Sie zuerst einen Tarif aus.")
    elsif @tarif - @eingeworfen > 0
      offener_betrag = @tarif - @eingeworfen
      puts ("Sie müssen noch " + offener_betrag.to_s() + " Euro einzahlen.")
    else
      kartenpreis = @tarif

      puts("------------------")
      puts("- Cinema Magico -")
      puts("- Phantastische Tierwesen")
      # TODO diese Zeile ändern
      puts("- Preis " + @tarif.to_s + " Euro")
      puts("- Bezahlt " + @eingeworfen.to_s + " Euro")
      puts("------------------")
      # die Gesamtsumme, mit dem der Automat nach der letzten Leerung
      # gefuettert wurde
      wechsel_geld()
      @summe_automat += kartenpreis
      @tarif = nil
      return
    end
  end

  def to_s()
    return "KartenAutomat #{@number} Tarif #{@tarif} Euro Summe #{@summe_automat}"
  end

end

