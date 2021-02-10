def f_rek(n)
  if n == 0
    return 1
  else
    return f_rek(n - 1) + ((-1.0) ** n) / (2.0 ** n)
  end
end


def f_iter(n)
  # if n == 0
  #   return 1
  # end
  res = 1.0
  for i in 1..n
    res += (((-1.0) ** i) / (2.0 ** i))
  end
  return res
end

def formel1(n)
  return ((-1.0) ** n) / (2.0 ** n)
end


def f_rek_end(n, sp = 0)
  return 1 + sp if n == 0
  return f_rek_end(n - 1, sp = sp + formel1(n))
end

def formel2(x, n)
  return ((x - 1.0) ** n) / (n * (x ** n))
end

# TODO ln_rek end-rekursiv mit Prüfung auf Type und Wert
# A6.1.2

def ln_rek_end(x, n, sp = 0.0)
  return sp if n == 0
  return -1 if x < 0.5
  ln_rek_end(x, n - 1, sp = sp +formel2(x, n))
end

def ln_rek(x, n)
  return formel2(x, n) if n == 1
  return -1 if x < 0.5
  ln_res = ln_rek(x, (n - 1)) + ((x - 1.0) ** n) / (n * (x ** n)) #formel2(x, n)
  return ln_res
end

def ln_iter(x, n)
  return 1 if n == 0
  return -1 if x < 0.5
  sum = 0.0
  for i in n.downto(1)
    sum += formel2(x, i)
    puts sum
  end
  return sum
end

jj = 10.0
# puts f_iter(jj)
# puts f_rek(jj)
#puts f_rek_end(jj, 0)
sh = 100


puts ln_rek_end(jj, sh)
puts ln_rek(jj, sh)
#puts ln_rek_end(jj, sh)
#puts ln_iter(jj, sh)
#
def check_type(val, type)
  if val.class != type
    raise TypeError
  end
end

def check_greater(val, lower_bound)
  if val <= lower_bound
    raise ArgumentError
  end
end

check_greater(2, 0)