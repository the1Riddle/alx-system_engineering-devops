#!/usr/bin/env ruby
# prints that that starts with h and ends with n
match = ARGV[0].scan(/\Ah.n\z/)
puts match.empty? ? "" : match.join
