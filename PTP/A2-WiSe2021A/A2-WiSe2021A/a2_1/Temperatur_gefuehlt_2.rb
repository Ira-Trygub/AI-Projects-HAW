def temperatur1(t)
  if t >= -60 && t < 12
    :kalt
  else
    if t >= 12 && t < 20
      :moderat
    else
      if t >= 20 && t < 25
        :warm
      else
        :heiss
      end
    end
  end
end

def temperatur2(t)
  if t >= -60 && t < 12
    :kalt
  elsif t >= 12 && t < 20
    :moderat
  elsif t >= 20 && t < 25
    :warm
  else
    :heiss
  end
end

def temperatur3(t)
  case
  when t >= -60 && t < 12 then
    :kalt
  when t >= 12 && t < 20 then
    :moderat
  when t >= 20 && t < 25 then
    :warm
  else
    :heiss
  end
end

def temperatur4(t)
  case t
  when -60..11
    :kalt
  when 12..19
    :moderat
  when 20..24
    :warm
  else
    :heiss
  end
end

def temperatur5(t)
  (t >= -60 && t < 12) ? :kalt : (t >= 12 && t < 20) ? :moderat : (t >= 20 && t < 25) ? :warm : :heiss
end


puts temperatur1(-40)
puts temperatur2(-40)
puts temperatur3(-40)
puts temperatur4(-40)
puts temperatur5(-40)

puts temperatur1(15)
puts temperatur2(15)
puts temperatur3(15)
puts temperatur4(15)
puts temperatur5(15)

puts temperatur1(22)
puts temperatur2(22)
puts temperatur3(22)
puts temperatur4(22)
puts temperatur5(22)

puts temperatur1(30)
puts temperatur2(30)
puts temperatur3(30)
puts temperatur4(30)
puts temperatur5(30)



