#!/usr/bin/env ruby
# regular expression must be only matching: capital letters
match = ARGV[0].scan(/[A-Z]*/)
puts match.empty? ? "" : match.join
