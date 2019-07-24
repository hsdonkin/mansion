require('pry')

class Game
  attr_reader :map_state
  attr_accessor :room_deck, :current_pos


  def initialize
    @map_state = [
      [1, 1, 3],
      [3, 1, 1],
      [2, 0, 1]
    ]
    @room_deck = []
    @current_pos = [2,1]
    @room_type = ["entryway", "hallway", "parlor", "observatory"]
  end

  def move_up
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


  def legal_move?(x_mov, y_mov)
    x_change = @current_pos[1] + y_mov
    y_change = @current_pos[0] + y_mov
    if @map_state[x_change] != nil && @map_state[y_change] != nil
      true
    else
      false
    end
  end

end

our_game = Game.new
binding.pry
