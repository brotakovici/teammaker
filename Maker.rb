require_relative  "TeamSizeError"

class Maker
  def initialize(names, teamSize, pairNo)
    @nameList = names
    @size = teamSize
    @no = pairNo
  end 

  def makePair
    shuffledNames = @nameList.shuffle
    
    if shuffledNames.length < @size * 2
      raise TeamSizeError.new(@size, shuffledNames.size)
    end 
  
    teamOne = shuffledNames[0..@size - 1]
    teamTwo = shuffledNames[@size..@size * 2 - 1]
    remainder = shuffledNames - teamOne - teamTwo
  
    pair = [teamOne, teamTwo, remainder]
   return pair 
  end

  def makePairs
    pairs = [] 
    
    for i in 0..pairNo
      pairs.push(makePair)
    end

    return pair
  end 
end
