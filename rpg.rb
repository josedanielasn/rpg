class Duel
  def battleRound(attacker_dmg, defender)
    defender.hp = defender.hp + defender.armor - attacker_dmg
  end
end

class Hero < Duel
  attr_accessor :hp
  attr_reader :armor, :dmg, :name

  def initialize(name)
    @name = name
  end

  def attack(defender)
    puts defender.hp = battleRound(@dmg, defender)
  end

end

class Mage < Hero
  def initialize(name)
    @hp = 150
    @armor = 20
    @dmg = 70
    super
  end
end

class Tank < Hero
  def initialize(name)
    @hp = 250
    @armor = 50
    @dmg = 30
    super
  end
end

class Warrior < Hero
  def initialize(name)
    @hp = 200
    @armor = 35
    @dmg = 50
    super
  end
end

class Priest < Hero
  def initialize(name)
    @hp = 230
    @armor = 25
    @dmg = 10
    super
  end

  # def heal(target)
  #   target.hp = target.hp + 10
  # end
end


dark_mage = Mage.new('dark_mage')
bear = Tank.new('Bear')


