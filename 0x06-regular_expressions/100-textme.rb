#!/usr/bin/env ruby
regex = /\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/

# Open and read the log file
File.open(ARGV[0]).each do |line|
  match_data = line.match(regex)
  if match_data
    sender = match_data[1]
    receiver = match_data[2]
    flags = match_data[3]
    puts "#{sender},#{receiver},#{flags}"
  end
end