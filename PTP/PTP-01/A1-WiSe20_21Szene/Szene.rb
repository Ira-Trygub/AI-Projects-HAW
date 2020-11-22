require "./Klasse1"
require "./Leinwand"
require "./Klasse2"
require "./KlasseAktiv"

class Szene
  def initialize()
    @global_x = 200
    @global_y = 300
    @house = Klasse2.new()
    @house.auf_position_setzen(@global_x = 200, @global_y)

    @fir_tree = Klasse1.new()
    @fir_tree.auf_position_setzen(@global_x = 200, @global_y+70)

    @smile = KlasseAktiv.new ()
    @smile.auf_position_setzen(global_x = 200, @global_y-40)



  end

  def sichtbar_machen()
    @house.sichtbar_machen()
    @fir_tree.sichtbar_machen()
    @smile.sichtbar_machen()
  end

  def unsichtbar_machen()
    @house.unsichtbar_machen()
    @fir_tree.unsichtbar_machen()
    @smile.unsichtbar_machen()
  end

  # TODO hier die Methoden implementieren
  def animieren()
    @smile.animieren()
  end

  def in_nacht_szene_aendern()
    @house.in_schwarz_weiss_aendern()
    @fir_tree.in_schwarz_weiss_aendern()
    @smile.in_schwarz_weiss_aendern()
  end
  def in_tag_szene_aendern()
    @house.in_farbig_aendern()
    @fir_tree.in_farbig_aendern()
    @smile.in_farbig_aendern()
  end



end