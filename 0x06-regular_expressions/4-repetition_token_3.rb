#!/usr/bin/env ruby
# prints whre there is an instance of b and t
match = ARGV[0].scan(/hbt*n/)
puts match.empty? ? "" : match.join
