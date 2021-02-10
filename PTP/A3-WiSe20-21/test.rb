require "./Position"
require "./Rechnung"
require "./Kasse"
a=Position.new('kolbasa', 2, 10)
b=Position.new('bulka', 3,5)
r1=Rechnung.new(1)
r1.position_eintragen(a)
r1.position_eintragen(b)
k=Kasse.new()
k.rechnung_eintragen(r1)


r1.blabla
