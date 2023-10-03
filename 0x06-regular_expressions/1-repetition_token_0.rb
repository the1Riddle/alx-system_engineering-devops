#!/usr/bin/env ruby
#prints letters starting with hbt and ends with tn
match = ARGV[0].scan(/hbt{2,5}n/)
puts match.empty? ? "" : match.join
