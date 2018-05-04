class Box
  def initialize(w, h)
    @width, @height = w, h
  end

  def getWidth
    @width
  end

  def getHeight
    @height
  end

  def setWidth=(value)
    @width = value
  end

  def setHeight=(value)
    @height = value
  end
end

box = Box.new(10, 30)
box.setWidth = 20
box.setHeight = 40

puts "The box is #{box.getWidth}m wide"
puts "The box is #{box.getHeight}m high"
