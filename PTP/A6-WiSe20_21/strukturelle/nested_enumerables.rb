module Enumerable

  # A6.2.1	Schreiben Sie die Methode count_inner_nodes()
  # für das Modul Enumerable. Die Methode zählt alle
  # in einem beliebig geschachtelten Enumerable
  # enthaltenen Enumerables.
  # Überschreiben Sie die Methode in der Klasse Hash, so dass
  # die Methode für beliebige Enumerables korrekt arbeitet

  def count_inner_nodes(ct = 0)
    return 0
  end

  #	A6.2.2 Schreiben Sie die Methode deep_count(elem) für die Modul Enumerable,
  # die die Anzahl der Elemente in einem beliebig geschachtelten
  # Enumerable zählt. Die Methode gibt 0 zurück, wenn das Element nicht
  # enthalten ist.

  def deep_count(elem, ct = 0)
    return 0
  end

  #A6.2.3 Schreiben Sie eine Methode, die alle Enumerables
  #eines Enumerables einsammelt: deep_collect
  #Überschreiben Sie Methode deep_collect() in der Klasse Hash, so dass
  #die Methode für beliebige Enumerables korrekt arbeitet

  def deep_collect(collector = [])
    return collector
  end

  # A6.2.4	Schreiben Sie eine Methode, die rekursiv das
  # maximale Element eines beliebig geschachtelten Enumerables bestimmt,
  # das sonst nur Zahlen enthält.
  def deep_max_elem(max = nil)
    return max
  end

  # A6.2.5	Schreiben Sie eine Methode für das Modul Enumerable, die rekursiv in einem
  # beliebig geschachtelten Enumerable die Häufigkeit des Auftretens der Typen in einem Hash einsammelt
  # deep_count_types(type_count = {})
  # Überschreiben Sie diese Methode in der Klasse Hash, so dass
  # die Methode für beliebige Enumerables korrekt arbeitet
  def deep_count_types(type_count = Hash.new(0))
    return type_count
  end

  # A6.2.6	Schreiben Sie eine Methode für das Modul Enumerable, die rekursiv die maximale Tiefe
  # bestimmt.
  # Überschreiben Sie diese Methode in der Klasse Hash, so dass
  # die Methode für beliebige Enumerables korrekt arbeitet
  def max_depth()
    return 0
  end
end


class Hash

  # A6.2.1	Schreiben Sie die Methode count_inner_nodes()
  # für das Modul Enumerable. Die Methode zählt alle
  # in einem beliebig geschachtelten Enumerable
  # enthaltenen Enumerables.
  # Überschreiben Sie die Methode in der Klasse Hash, so dass
  # die Methode für beliebige Enumerables korrekt arbeitet

  def count_inner_nodes(ct = 0)
    return 0
  end

  #A6.2.3 Schreiben Sie eine Methode, die alle Enumerables
  #eines Enumerables einsammelt: deep_collect
  #Überschreiben Sie Methode deep_collect() in der Klasse Hash, so dass
  #die Methode für beliebige Enumerables korrekt arbeitet

  def deep_collect(collector = [])
    return collector
  end

  # A6.2.5	Schreiben Sie eine Methode für das Modul Enumerable, die rekursiv in einem
  # beliebig geschachtelten Enumerable die Häufigkeit des Auftretens der Typen in einem Hash einsammelt
  # deep_count_types(ary, type_count = {})
  # Überschreiben Sie diese Methode in der Klasse Hash, so dass
  # die Methode für beliebige Enumerables korrekt arbeitet
  # ary = [1, [2, [3]]] # {Integer => 3, Array => 2}
  def deep_count_types(type_count = Hash.new(0))
    return type_count
  end


  # A6.2.6	Schreiben Sie eine Methode für das Modul Enumerable, die rekursiv die maximale Tiefe
  # bestimmt.
  # Überschreiben Sie diese Methode in der Klasse Hash, so dass
  # die Methode für beliebige Enumerables korrekt arbeitet
  def max_depth()
    return 0
  end

  # A6.2.7 Schreiben Sie die Methode deep_invert für die Klasse Hash, die einen beliebig geschachtelten Hash rekursiv
  # invertiert, d.h. in allen Hashes die Schlüssel mit den Werten vertauscht.
  def deep_invert()
    return {}
  end

  # A6.2.8 Schreiben Sie die Methode deep_to_a für die Klasse Hash, die einen beliebig geschachtelten Hash rekursiv
  # in ein Array von Arrays umwandelt.
  def deep_to_a()
    return []
  end

end