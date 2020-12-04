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
    # TODO Tarif setzen
  end

  def tarif_gewaehlt?()
    # TODO
  end

  def tarif_waehlen(tarif)
    # TODO
  end

  def abbrechen()
    # TODO
  end

  def karten_preis
    # TODO
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
    # TODO
  end


  # Gibt das Wechselgeld zurück und setzt den eingeworfenen Betrag auf 0
  def wechsel_geld()
    # TODO
  end

  # Druckt die Kinokarte
  # Der Druck wird als Ausgabe auf der Konsole simuliert
  # Am Ende des Drucks wir der bisher eingeworfene Betrag wieder auf 0 gesetzt,

  def karte_drucken()
    # TODO ÄNDERN
    puts("------------------")
    puts("- Cinema Magico -")
    puts("- Phantastische Tierwesen")
    # TODO diese Zeile ändern
    puts("- Preis " + @tarif.betrag().to_s() + " Euro")
    puts("- Bezahlt " + @eingeworfen.to_s() + " Euro")
    puts("------------------")
    # die Gesamtsumme, mit dem der Automat nach der letzten Leerung
    # gefuettert wurde
    @summe_automat = @summe_automat + @eingeworfen
    @eingeworfen = 0
    return
  end

  def to_s()
    return "KartenAutomat #{@number} Tarif #{@tarif} Euro Summe #{@summe_automat}"
  end

end

