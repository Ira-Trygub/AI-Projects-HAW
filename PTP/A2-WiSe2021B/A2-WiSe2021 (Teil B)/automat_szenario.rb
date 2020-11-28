require "./KinokartenAutomat"
require "./Tarif"

tarif1 = Tarif.new("Normal",20)
tarif2 = Tarif.new("Ermaessigt", 10)
kka = KinokartenAutomat.new
kka.tarif_waehlen(tarif2)

# usw.

kka

kka.karte_drucken

puts "!!!!!!!!!!!!!!!!!!!!!!!!!!"

puts kka.karten_preis

