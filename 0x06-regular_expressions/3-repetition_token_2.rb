#!/usr/bin/env ruby
# a script that prints one or more of t
match = ARGV[0].scan(/hbt+n/)
puts match.empty? ? "" : match.join
