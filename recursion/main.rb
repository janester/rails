require "pry"
require "pry-debugger"
require "pry-stack_explorer"

def sum(a,b)
  a+b
end

def square(a)
  binding.pry
  a**2
end

def cube(a)
  square(a)*a
end

def quad(a)
  cube(a)*a
end

def factorial(a)
  if a == 1
    a
  else
    a * factorial(a-1)
  end
end

def fib(a)
  if a == 1
    a
  elsif a == 0
    a
  else
    fib(a-1) + fib(a-2)
  end
end

class Node
  attr_accessor :data, :prev, :nxt
  def initialize(data)
    self.data = data
    self.prev = self.nxt = nil
  end
end

binding.pry
