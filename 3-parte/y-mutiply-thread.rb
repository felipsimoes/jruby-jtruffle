require 'matrix'
require 'thread'

def calc
  x = Matrix.build(300) {rand}
  y = Matrix.build(300) {rand}

  x * y
end

def run
  jobs = []
  10.times do
    jobs << Thread.new {calc}
  end
  jobs.each(&:join)
end

run
