#!/usr/bin/env ruby
# regular expression must match a 10 digit phone number
match = ARGV[0].scan(/^\d{10,10}/)
puts match.empty? ? "" : match.join
