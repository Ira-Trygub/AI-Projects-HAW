require_relative '../utils.rb'
# f(n) = 1 für n==0; f(n) = f(n-1)+(-1)^n*1/2^n
class Approximator
  def initialize(n)
    @n = n
  end

end


# TODO f_rek einfach rekursiv mit Exceptions, wenn n nicht vom korrekten Typ oder ungültiger Wert
# A.6.1.1

def f_rek(n)
  if n == 0
    return 1
  else
    return f_rek(n - 1) + ((-1.0) ** n) / (2.0 ** n)
  end
end


def formel1(n)
  return ((-1.0) ** n) / (2.0 ** n)
end

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

# TODO f_rek_end Endrekursiv mit Exceptions
# A6.1.1


def f_rek_end(n, sp = 0)
  return sp if n == 0
  return f_rek_end(n - 1, sp = sp + formel1(n))
end


# TODO f_iter
# A6.1.1

def f_iter(n)
  res = 1.0
  for i in 1..n
    res += (((-1.0) ** i) / (2.0 ** i))
  end
  return res
end


# ln(x,n) = summe_i=(1..n) (x-1)^i/(i*x^i) für x > 0.5
# TODO ln_rek einfach rekursiv mit Prüfung auf Type und Wert
# A6.1.2

def ln_rek(x, n)
  return formel2(x, n) if n == 1
  return -1 if x < 0.5
  return ln_rek(x, (n - 1)) + ((x - 1.0) ** n) / (n * (x ** n)) #formel2(x, n)
end


def checks_ln(x, n) end

def formel2(x, n)
  ((x - 1.0) ** n) / (n * (x ** n))
end

# TODO ln_rek end-rekursiv mit Prüfung auf Type und Wert
# A6.1.2

def ln_rek_end(x, n, sp = 0.0)
  return sp if n == 0
  return -1 if x < 0.5
  ln_rek_end(x, n - 1, sp = sp +formel2(x, n))
end




# TODO iterativ

def ln_iter(x, n)
  return 1 if n == 0
  return -1 if x < 0.5
  sum = 0
  for i in 1..n
    sum += formel2(x, i)
  end
  return sum
end

