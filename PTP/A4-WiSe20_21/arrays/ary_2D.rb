require "../arrays/ary_1D"

# TODO Erzeugen

def erzeuge_matrix_random_in_range(n,m,range)
  # TODO
  return [[]]
end

def erzeuge_unregelmaessiges_random_in_range(n,min,max,range)
  # TODO
  return [[]]
end


def transponierte?(m1,m2)
  # TODO
  return false
end

# GEGEBEN!!!!!
def matrix?(m)
  return m.is_a?(Array) && !m.empty?() && m.all?() do |ary1D| ary1D.is_a?(Array) &&
      ary1D.size()==m[0].size() &&
      ary1D.none?(){|elem| elem.is_a?(Array)}
  end
end

# Kniffliger
def addiere_ary2D(ary1,ary2)
  # TODO
  return [[]]
end

