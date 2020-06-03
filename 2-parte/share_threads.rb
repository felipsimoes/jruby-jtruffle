require 'thread'
class Foo
  attr_reader :lista
  def initialize
    @lista = []
  end

  def add(x)
    @lista << x
  end

  def show
    puts @lista.inspect
  end
end

f = Foo.new
(1..10).map do |i|
  Thread.new do
    f.add i
    f.show
  end
end.each(&:join)
puts "--------------"
puts f.lista.size
