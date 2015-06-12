class TeamSizeError < RuntimeError
  def initialize(sizeGiven, actualSize)
    @teamSize = sizeGiven
    @listSize = actualSize
  end 
end
