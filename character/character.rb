require './dialog/character_dialog'
class Character
  include CharacterDialog

  attr_accessor :name, :hp, :mp, :offense, :defense, :item, :skill, :magic_skill, :experience_point, :gold

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @mp = params[:mp]
    @offense = params[:offense]
    @defense = params[:defense]
    @agility = params[:agility]
    @item = params[:item]
    @skill = params[:skill]
    @magic_skill = params[:magic_skill]
    @experience_point = params[:experience_point]
    @gold = params[:gold]
  end

end