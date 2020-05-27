require './character/character'

class Brave < Character
  attr_accessor :physical_strength, :magical_ability, :power, :protect, :agility, :personality

  def initialize(**params)

      super(
        name: params[:name],
        hp: params[:hp]*params[:personality][1].round,
        mp: params[:mp]*params[:personality][2].round,
        offense: params[:offense]*params[:personality][3].round,
        defense: params[:defense]*params[:personality][4].round,
        agility: params[:agility]*params[:personality][5].round,
        item: params[:item],
        skill: params[:skill],
        magic_skill: params[:magic_skill],
        experience_point: params[:experience_point],
        gold: params[:gold]
      )
      p params[:personality][1]

      @physical_strength = params[:physical_strength]*params[:personality][1].round
      @magical_ability = params[:magical_ability]*params[:personality][2].round
      @power = params[:power]*params[:personality][3].round
      @protect = params[:protect]*params[:personality][4].round
      @personality = params[:personality][0]

  end

  def define_personality
    params[:personality]
  end

end