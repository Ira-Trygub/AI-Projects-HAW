# Methode echo

class Gebirge
  def initialize
    #@eingabe=''
  end
  def normalize(eing)
    return  eing.strip().downcase()
  end

  def echo1()

    puts( "Hallo ich bin Dein Echo. Beenden kannst Du mich mit 'bye'")
    eingabe=''
    while normalize(eingabe) != "bye"
      eingabe=gets().chomp()
      puts(eingabe)

    end


  end


  def echo2()
    puts( "Hallo ich bin Dein Echo. Beenden kannst Du mich mit 'bye'")
    begin
      eingabe=gets().chomp()
      puts(eingabe)
    end while normalize(eingabe) != "bye"
  end


  def echo3()
    puts( "Hallo ich bin Dein Echo. Beenden kannst Du mich mit 'bye'")
    eingabe=''

    until normalize(eingabe) == "bye"
      eingabe=gets().chomp()
      puts(eingabe)
    end
  end

  def echo4()
    puts( "Hallo ich bin Dein Echo. Beenden kannst Du mich mit 'bye'")
    begin
      eingabe=gets().chomp()
      puts(eingabe)
    end until normalize(eingabe) == "bye"
  end

end

echo = Gebirge.new()
echo.echo1()
echo.echo2()
echo.echo3()
echo.echo4()




