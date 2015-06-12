require_relative  "TeamSizeError.rb"
require_relative "Player.rb"

class Maker
  
  def initialize(names, teamSize, pairNo)
    @nameList = names
    @size = teamSize
    @no = pairNo
  end 

  def orderByPriority(array)
    array.sort_by {|x| x.getPriority}.reverse  
  end
  
  def makePair
    shuffledNames = @nameList.shuffle
    shuffledNames = orderByPriority(shuffledNames)
    
    if shuffledNames.length < @size * 2
      raise TeamSizeError.new(@size, shuffledNames.size)
    end 
  
    teamOne = shuffledNames[0..@size - 1]
    teamTwo = shuffledNames[@size..@size * 2 - 1]
    remainder = shuffledNames - teamOne - teamTwo
    (shuffledNames - remainder).map {|a| a.decreasePriority}
    
    pair = [teamOne, teamTwo, remainder]
   return pair 
  end

  def makePairs
    pairs = [] 
    
    for i in 0...@no
      pairs.push(makePair)
    end

    return pairs
  end 
end
