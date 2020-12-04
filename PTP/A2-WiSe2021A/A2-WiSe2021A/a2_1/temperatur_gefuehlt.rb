class TemperaturGefuehlt

  def self.get_temperatur1(t)  #Klassenmethode
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

  def self.get_temperatur2(t)  #Klassenmethode
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

  def self.get_temperatur3(t)  #Klassenmethode
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

  def self.get_temperatur4(t)  #Klassenmethode
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

  def self.get_temperatur5(t)  #Klassenmethode
    (t >= -60 && t < 12) ? :kalt : (t >= 12 && t < 20) ? :moderat : (t >= 20 && t < 25) ? :warm : :heiss
  end
end

def temperatur1(t)
  res = TemperaturGefuehlt.get_temperatur1(t)
  puts res
end

def temperatur2(t)
  res = TemperaturGefuehlt.get_temperatur2(t)
  puts res
end

def temperatur3(t)
  res = TemperaturGefuehlt.get_temperatur3(t)
  puts res
end

def temperatur4(t)
  res = TemperaturGefuehlt.get_temperatur4(t)
  puts res
end

def temperatur5(t)
  res = TemperaturGefuehlt.get_temperatur5(t)
  puts res
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


