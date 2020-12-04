$CLASSES = [:Szene, :Klasse1, :Klasse2, :KlasseAktiv, :Klasse3]

#
# Methodenspezifikation fuer die Objekt- und Klassen-methoden der Klassen der Toolbox
#

$METHOD_CONFIG = {
  :Szene => {
  :sichtbar_machen => { :label => :sichtbar_machen },
  :unsichtbar_machen => { :label => :unsichtbar_machen },
  :in_tag_szene_aendern => { :label => :in_tag_szene_aendern },
  :in_nacht_szene_aendern => { :label => :in_nacht_szene_aendern },
  :animieren => {:label => :animieren}
  },
  :Szene_class => {
  :new => { :label => :'new()' },
  },
  :Klasse1 => {
      :sichtbar_machen => { :label => :sichtbar_machen },
      :unsichtbar_machen => { :label => :unsichtbar_machen },
      :position => { :label => :position, :ergebnis => :Punkt },
      :auf_position_setzen => {:label => :'auf_position_setzen(...)', :args => [[:x, :Integer] ,[:y,:Integer]]},
      :in_farbig_aendern => { :label => :in_farbig_aendern },
      :in_schwarz_weiss_aendern => { :label => :in_schwarz_weiss_aendern },
  },
  :Klasse1_class => {
      :new => { :label => :'new()' },
  },
  :Klasse2 => {
  :sichtbar_machen => { :label => :sichtbar_machen },
  :unsichtbar_machen => { :label => :unsichtbar_machen },
  :position => { :label => :position, :ergebnis => :Punkt },
  :auf_position_setzen => {:label => :'auf_position_setzen(...)', :args => [[:x, :Integer] ,[:y,:Integer]]},
  :in_farbig_aendern => { :label => :in_farbig_aendern },
  :in_schwarz_weiss_aendern => { :label => :in_schwarz_weiss_aendern },
  },
  :Klasse2_class => {
  :new => { :label => :'new()' },
  },
  :Klasse3 => {
      :sichtbar_machen => { :label => :sichtbar_machen },
      :unsichtbar_machen => { :label => :unsichtbar_machen },
      :position => { :label => :position, :ergebnis => :Punkt },
      :auf_position_setzen => {:label => :'auf_position_setzen(...)', :args => [[:x, :Integer] ,[:y,:Integer]]},
      :in_farbig_aendern => { :label => :in_farbig_aendern },
      :in_schwarz_weiss_aendern => { :label => :in_schwarz_weiss_aendern },
  },
  :Klasse3_class => {
      :new => { :label => :'new()' },
  },
  :KlasseAktiv => {
      :sichtbar_machen => { :label => :sichtbar_machen },
      :unsichtbar_machen => { :label => :unsichtbar_machen },
      :position => { :label => :position, :ergebnis => :Punkt },
      :auf_position_setzen => {:label => :'auf_position_setzen(...)', :args => [[:x, :Integer] ,[:y,:Integer]]},
      :in_farbig_aendern => { :label => :in_farbig_aendern },
      :in_schwarz_weiss_aendern => { :label => :in_schwarz_weiss_aendern },
      :animieren => {:label  => :animieren},
      :zuruecksetzen => {:label => :zuruecksetzen}

  },
  :KlasseAktiv_class  => {
    :new => { :label => :'new()'}
  },
}

