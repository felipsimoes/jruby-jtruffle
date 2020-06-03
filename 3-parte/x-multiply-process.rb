require 'matrix'
require 'thread'

def calc
   x = Matrix.build(300) {rand} 
   y = Matrix.build(300) {rand}

   x * y
end

def run
   10.times do
      Process.fork {calc} 
   end
   Process.waitall
end

run
