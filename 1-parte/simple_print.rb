require 'thread'
require 'prime'

def primo
  x = 0
  Prime.each(100_000_000) { |y| x = y }
  puts x
end

def ping
  puts "pong"
end

def king
  puts "kong"
end

while word = gets
  case word.chomp
  when "primo"
    primo
  when "ping"
    ping
  when "king"
    king
  end
end

