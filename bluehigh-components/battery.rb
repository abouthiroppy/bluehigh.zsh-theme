#!/usr/bin/env ruby
# coding: utf-8
output = `pmset -g batt`
percent_battery = output.match(/\d+\%/).to_s.gsub("%","").to_f

empty = '🔸'
filled = '🔹'

# puts percent_battery.to_s

num_filled = (percent_battery/10).ceil
puts (filled * num_filled) + empty * (10-num_filled)
