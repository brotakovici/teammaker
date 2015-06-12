class Player
  def initialize(name, priority)
    @playerName = name
    @playerPriority = priority
  end

  def decreasePriority
    @playerPriority -= 1
  end

  def getName
    @playerName
  end

  def gerPriority
    @playerPriority
  end
end
