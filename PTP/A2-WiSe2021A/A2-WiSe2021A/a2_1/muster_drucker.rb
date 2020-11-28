class MusterDrucker

  def rechteck(n)
    puts "*" * n
    for i in (1...n - 1)
      puts ("*" + ' ' * (n - 2) + '*')
    end
    puts '*' * n

  end

  def kreuz(n)
    for i in (0...n)
      for j in (0...n)
        if i == j or j == n - 1 - i
          print '*'
        else
          print ' '
        end
      end
      puts
    end

  end

  def raute(n)
    for i in (0...n)
      for j in (0...n)
        if j + i == (n - 1) / 2 or (j - i).abs == (n - 1) / 2 or n - 1 - i == j - (n - 1) / 2

          print '*'
        else
          print ' '
        end
      end
      puts
    end

  end

  def dreieck_oben(n)
    for i in (0...n)
      for j in (0...n)
        if j >= i
          print '*'
        else
          print ' '
        end

      end
      puts
    end

  end
end
  drucker = MusterDrucker.new()

  drucker.rechteck(8)
  puts
  drucker.kreuz(9)
  puts
  drucker.raute(7)
  puts
  drucker.dreieck_oben(n = 9)
