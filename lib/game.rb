require('pry')

class Game
  attr_reader :map_state
  attr_accessor :room_deck, :current_pos


  def initialize
    @map_state = [
      [3, 1, 3],
      [3, 1, 3],
      [3, 0, 3]
    ]
    binding.pry
    @room_deck = []
    @current_pos = [2,1]
    @room_type = ["entryway", "hallway", "parlor", "observatory"]
  end

  def move_up
    puts @current_pos
    previous_pos = @current_pos
    @current_pos[0] = previous_pos[0] -=1
    self.what_room
  end

  def move_down
    previous_pos = @current_pos
    @current_pos[0] = previous_pos[0] +=1
    self.what_room
  end

  def move_left
    previous_pos = @current_pos
    @current_pos[1] = previous_pos[1] -=1
    self.what_room
  end

  def move_right
    previous_pos = @current_pos
    @current_pos[1] = previous_pos[1] +=1
    self.what_room
  end

  def what_room
    @room_type[@map_state[@current_pos[0]][@current_pos[1]]]
  end

  def up_avail
    if @current_pos[0] != 0
      return true
    else
      return false
    end
  end

  def down_avail
    if @map_state[ (@current_pos[0] + 1) ] != nil
      return true
    else
      return false
    end
  end


end
