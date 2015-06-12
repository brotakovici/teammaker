#!/usr/bin/env ruby

require_relative "IOHandler.rb"
require_relative "Maker.rb"

puts "Enter name of the file containing the names of the team members."

input = gets.chomp

puts "Enter the name of the output file."

output = gets.chomp

puts "Enter how many team pairs to be made."

pairs = gets.chomp

pairs = pairs.to_i

puts "Enter size of teams"

size = gets.chomp

size = size.to_i

io = IOHandler.new(input, output)

names = io.readNames

maker = Maker.new(names, size, pairs)

pair = maker.makePair

io.writeNames(pair[0], pair[1], pair[])
