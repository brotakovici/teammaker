class IOHandler
  
  def initialize(input, output)
    @inputFile = input
    @outputFile = output
  end

  def readNames
    names = Array.new
    file = File.open(@inputFile, "r")
    
    while !file.eof?
      names.push(file.readline)
    end

    file.close
    return names
  end

  def writeNames(team1, team2, remainder)
    outfile = File.open(@outputFile, "w")
    
    outfile.puts "Team 1"
    team1.each do |nick|
      outfile.puts nick
    end 

    outfile.puts "\nTeam2"
    team2.each do |nick|
      outfile.puts nick
    end
    
    outfile.puts "\nNot in this game"
    remainder.each do |nick|
      outfile.puts nick
    end

    outfile.puts "\n End of pair"

    outfile.puts "\n"
    outfile.close
  end
end 
