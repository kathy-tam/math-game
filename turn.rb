class Turn
  attr_accessor :player

  def initialize
    @player = 1
  end

  def next
    @player = (@player + 1) % 2
  end
end