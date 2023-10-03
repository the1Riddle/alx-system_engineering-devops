#!/usr/bin/env ruby
# script should output: [SENDER],[RECEIVER],[FLAGS]
msg = ARGV[0].scan(/from:\+*\w*/).join[5..-1] + "," +
      ARGV[0].scan(/to:\+*\w*/).join[3..-1] + "," +
      ARGV[0].scan(/flags:(.*?)\]/).join
puts msg.empty? ? "" : msg
