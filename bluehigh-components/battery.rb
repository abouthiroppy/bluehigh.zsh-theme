#!/usr/bin/env ruby
# coding: utf-8
output = `pmset -g batt`
percent_battery = output.match(/\d+\%/).to_s.gsub("%","").to_f

empty = '🔸'
filled = '🔹'

num_filled = (percent_battery/10).ceil - 1
if percent_battery == 100 then
	puts filled * 10
else
	puts (filled * num_filled) + empty * (10 - num_filled)
end
