require "../arrays/ary_2D"
require "../utils"


trenner("4.2.1 Matrix erzeugen")
m1 = erzeuge_matrix_random_in_range(4,7,(0..9))
p m1
m1t = m1.transpose()
m2 = erzeuge_matrix_random_in_range(6,4,(0..9))

trenner("4.2.2 2D Array erzeugen")
ary2D_1 = erzeuge_unregelmaessiges_random_in_range(5,2,9,(0..9))
ary2D_2 = erzeuge_unregelmaessiges_random_in_range(3,2,9,(0..9))
puts "ary2D_1:#{ary2D_1}"
puts "ary2D_2:#{ary2D_2}"

trenner("4.2.3 Test \"transponierte?\"")
m1t = m1.transpose()
m2 = erzeuge_matrix_random_in_range(6,4,(0..9))

puts "m1:#{m1}"
puts "m1 transponiert:#{m1t}"
puts transponierte?(m1,m1t)
puts transponierte?(m1,m1)
puts transponierte?(m1,m2)
puts matrix?([])
puts transponierte?(m1,[])
puts transponierte?([],m1)
puts transponierte?([],[])
puts transponierte?([[]],[[]])
puts transponierte?([[1]],[[1]])

trenner("4.2.4 Addiere")
puts "ary2D_1:#{ary2D_1}"
puts "ary2D_2:#{ary2D_2}"
p addiere_ary2D(ary2D_1,ary2D_2)

