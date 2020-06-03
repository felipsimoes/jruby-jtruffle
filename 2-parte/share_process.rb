class Foo
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
  Process.fork do
    f.add i
    f.show
  end
end
puts "--------------"
f.show
