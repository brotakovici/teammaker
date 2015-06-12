require_relative  "TeamSizeError"

class Maker
  def initialize(names, teamSize, pairNo)
    @nameList = names
    @size = teamSize
    @no = pairNo
  end 

  def makePair
    shuffledNames = @nameList.shuffle
    
    if shuffledNames.length < teamSize * 2
      raise TeamSizeError, teamSize, shuffledNames.size
    end 
  
    teamOne = shuffledNames[0..teamSize - 1]
    teamTwo = shuffledNames[teamSize..teamSize * 2 - 1]
    remainder = shuffledNames - teamOne - teamTwo
  
    pair = [teamOne, teamTwo, remainder]
   return pair 
  end

  def makePairs
    pairs = Array.new
    index = 0
    while index < pairNo
      pairs[index] = makePair 
    end

    return pair
  end 
end