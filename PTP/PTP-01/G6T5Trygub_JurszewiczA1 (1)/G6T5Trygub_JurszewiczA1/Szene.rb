require "./Klasse1"
require "./Leinwand"
require "./Klasse2"
require "./Klasse3"
require "./KlasseAktiv"

class Szene
  def initialize()
    global_x = 200
    global_y = 250
    @house = Klasse2.new()
    @house.auf_position_setzen(global_x, global_y)

    @fir_tree = Klasse1.new()
    @fir_tree.auf_position_setzen(global_x+10, global_y+55)

    @smile = KlasseAktiv.new()
    @smile.auf_position_setzen(global_x+5, global_y-68)

    @smile2=KlasseAktiv.new()
    @smile2.auf_position_setzen(global_x-15, global_y-50)

    @smile3=KlasseAktiv.new()
    @smile3.auf_position_setzen(global_x-5, global_y-95)

    @present=Klasse3.new()
    @present.auf_position_setzen(global_x-20, global_y-15)
  end

  def sichtbar_machen()
    @house.sichtbar_machen()
    @fir_tree.sichtbar_machen()
    @smile.sichtbar_machen()
    @smile2.sichtbar_machen()
    @smile3.sichtbar_machen()
    @present.sichtbar_machen()
  end

  def unsichtbar_machen()
    @house.unsichtbar_machen()
    @fir_tree.unsichtbar_machen()
    @smile.unsichtbar_machen()
    @smile2.unsichtbar_machen()
    @smile3.unsichtbar_machen()
    @present.unsichtbar_machen()
  end

  def animieren()
    @smile.animieren(direction=1, delay=0)
    @smile2.animieren(direction=-1, delay=0)
    @smile3.animieren(direction=-1, delay=0)
  end

  def in_nacht_szene_aendern()
    @house.in_schwarz_weiss_aendern()
    @fir_tree.in_schwarz_weiss_aendern()
    @smile.in_schwarz_weiss_aendern()
    @smile2.in_schwarz_weiss_aendern()
    @smile3.in_schwarz_weiss_aendern()
    @present.in_schwarz_weiss_aendern()
  end

  def in_tag_szene_aendern()
    @house.in_farbig_aendern()
    @fir_tree.in_farbig_aendern()
    @smile.in_farbig_aendern()
    @smile2.in_farbig_aendern()
    @smile3.in_farbig_aendern()
    @present.in_farbig_aendern()
  end

end