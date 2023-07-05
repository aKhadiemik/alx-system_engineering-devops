#!/usr/bin/env ruby
results = log_line.scan(/\[from:(.*?)\].*?\[to:(.*?)\].*?\[flags:(.*?)\]/)
results.each do |sender, receiver, flags|
  puts "#{sender},#{receiver},#{flags}"
  end
