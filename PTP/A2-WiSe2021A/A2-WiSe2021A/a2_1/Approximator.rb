class Approximator

  # Methode, die die Näherung  für PI**2/6 berechnet

  def approx_pi_quadrat_sechtel(n)
    app_pi_qua = 0.0
    for i in 1..n
      app_pi_qua += 1.0 / (i ** 2)
    end
    app_pi_qua

  end

  # Methode, die das n bestimmt für das PI/6- approx_pi_sechstel < 10e-6

  def n_fuer_differenz_kleiner(abweichung) # Abweichung 10e-6
    i = 1
    ppi = ((Math::PI) ** 2) / 6
    app_pi_qua = 0.0
    diff = abweichung
      while diff >= abweichung
        app_pi_qua += 1.0 / (i ** 2)
        diff =  ppi - app_pi_qua
        i += 1
      end
                                           #i
  end
end



wvf = Approximator.new()

puts Math::PI**2/6
puts wvf.approx_pi_quadrat_sechtel(100000)
puts wvf.n_fuer_differenz_kleiner(10e-5)
puts wvf.approx_pi_quadrat_sechtel(10000)
