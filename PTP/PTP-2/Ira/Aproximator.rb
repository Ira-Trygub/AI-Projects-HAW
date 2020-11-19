class Approximator


  def self.approx_pi_quadrat_sechtel(n)
    app_pi_qua = 0.0
    for i in 1..n
      app_pi_qua += 1.0 / (i ** 2)
    end
    app_pi_qua
  end

  def self.n_fuer_differenz_kleiner(abweichung)
    i = 1
    ppi = ((Math::PI) ** 2) / 6
    app_pi_qua = 0.0
    diff = abweichung
    while diff >= abweichung

      app_pi_qua += 1.0 / (i ** 2)
      diff =  ppi - app_pi_qua
      i += 1
    end
    i
  end
end



#p = Approximator.approx_pi_quadrat_sechtel(1000)
p2 = Approximator.n_fuer_differenz_kleiner(0.00005)
puts p2
