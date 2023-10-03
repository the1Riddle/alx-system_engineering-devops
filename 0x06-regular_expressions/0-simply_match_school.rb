#!/usr/bin/env ruby
matches = ARGV[0].scan(/School/)

# Print the matches or an empty string if no matches were found
puts matches.empty? ? "" : matches.join
