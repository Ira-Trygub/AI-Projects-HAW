#Praktikumsaufgabe 2
# 1) Bedingte Anweisungen: Thermometer

class Temperatur_gefuehlt

  def self.get_temperatur1(t)
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

  def self.get_temperatur2(t)
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

  def self.get_temperatur3(t)
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

  def self.get_temperatur4(t)
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

  def self.get_temperatur5(t)
    (t >= -60 && t < 12) ? :kalt : (t >= 12 && t < 20) ? :moderat : (t >= 20 && t < 25) ? :warm : :heiss
  end
end

def temperatur1(t)
  res = Temperatur_gefuehlt.get_temperatur1(t)
  puts res
end

def temperatur2(t)
  res = Temperatur_gefuehlt.get_temperatur2(t)
  puts res
end

def temperatur3(t)
  res = Temperatur_gefuehlt.get_temperatur3(t)
  puts res
end

def temperatur4(t)
  res = Temperatur_gefuehlt.get_temperatur4(t)
  puts res
end

def temperatur5(t)
  res = Temperatur_gefuehlt.get_temperatur5(t)
  puts res
end


temperatur1(24)




