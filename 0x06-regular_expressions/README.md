# Regular expression

A regular expression is a sequence of characters that forms a search pattern when search for data in a text,<br>
this search pattern discribes what one is searching for.

## Background Context

In this project i will build my own regular expression using Oniguruma, a regular expression library that which is used by Ruby by default. Note that other regular expression libraries sometimes have different properties.
<br>
Because the focus of this exercise is to play with regular expressions (regex), here is the Ruby code that I will use, meaning the code in between the //:

	sylvain@ubuntu$ cat example.rb
	#!/usr/bin/env ruby
	puts ARGV[0].scan(/127.0.0.[0-9]/).join
	sylvain@ubuntu$
	sylvain@ubuntu$ ./example.rb 127.0.0.2
	127.0.0.2
	sylvain@ubuntu$ ./example.rb 127.0.0.1
	127.0.0.1
	sylvain@ubuntu$ ./example.rb 127.0.0.a
