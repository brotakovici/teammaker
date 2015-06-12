#!/usr/bin/env ruby

puts "Enter name of the file containing the names of the team members."

input = gets.chomp

#puts "Enter how many team pairs to be made."

#pairs = gets.chomp

#pairs = pairs.to_i

file = File.open(input, "r")

names = Array.new

while !file.eof?
  name = file.readline
  names.push(name)
end

shuffledNames = names.shuffle

firstTeam = shuffledNames[0..4]
secondTeam = shuffledNames[5..9]
remainder = shuffledNames - firstTeam - secondTeam

outFile = File.open("teams.txt", "w")

outFile.puts "Team 1"

firstTeam.each do |nick|
  outFile.puts nick
end

outFile.puts "\nTeam 2"

secondTeam.each do |nick|
  outFile.puts nick
end

outFile.puts "\nNot in this match"
remainder.each do |nick|
  outFile.puts nick
end

file.close
outFile.close
