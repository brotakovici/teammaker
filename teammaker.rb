#!/usr/bin/env ruby

require_relative "IOHandler.rb"

puts "Enter name of the file containing the names of the team members."

input = gets.chomp

puts "Enter the name of the output file."

output = gets.chomp

puts "Enter how many team pairs to be made."

pairs = gets.chomp

pairs = pairs.to_i

io = IOHandler.new(input, output)

names = io.readNames

shuffledNames = names.shuffle

firstTeam = shuffledNames[0..4]
secondTeam = shuffledNames[5..9]
remainder = shuffledNames - firstTeam - secondTeam

io.writeNames(firstTeam, secondTeam, remainder)
