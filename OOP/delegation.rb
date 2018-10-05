=begin
  with Inheritance you create class hierarchies, where a parent class shares methods, constants and instance variable
  definitions with any class that inherits from it.

  with composition, a class creates (or is given) objects from another class. It uses these objects to delegate work
  to them. For example, a computer is made of different parts (objects) and each of these parts knows how to do one
  thing well. If you want to render something on the screen, the computer will tell the graphics card what to show not
  how to show it.
=end

# method 1
class Computer
  def initialize
    @memory = Memory.new
  end

  def write(data)
    @memory.write(data)
  end

  def read(index)
    @memory.read(index)
  end
end

class Memory
  def initialize
    @data = []
  end

  def write(data)
    @data << data
  end

  def read(index)
    @data[index]
  end
end

# method 2
class Computer
  extend Forwardable

  def_delegator :@memory, :read, :write

  def initialize
    @memory = Memory.new
  end
end

#method 3
# If you're using Rails, or the ActiveSupport gem by itself
class Computer
  delegate :read, :write, to: :@memory

  def initialize
    @memory = Memory.new
  end
end

# method 4
# You can delegate every method in a class using SimpleDelegator

class CoolArray < SimpleDelegator
end

cool = CoolArray.new([])
cool << 'ruby'
cool << 'simpledelegator'
# CoolArray behaves like object you pass to new

#Using SimpleDelagator example
class MemoryDelegator
  attr_reader :data
  def initialize
    @data = []
  end

  def write(data)
    @data << data
  end
end

class Memory < SimpleDelegator
end

m = Memory.new(MemoryDelegator.new)
m.write('lynn')

# Why is this useful?
# You can add new methods to this object, without having to change the original class.
