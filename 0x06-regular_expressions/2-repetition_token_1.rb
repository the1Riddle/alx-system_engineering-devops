#!/usr/bin/env ruby
# a script that prints one b
match = ARGV[0].scan(/hb?tn/)
puts match.empty? ? "" : match.join
