class Board
  attr_accessor :cells
  
  def initialize
    reset!
  end 
  
  def reset! 
    @cells = Array.new(9," ")
  end 
  
  def display
    puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
    puts "-----------"
    puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
    puts "-----------"
    puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
  end
  
  def position(input)
    cells[input.to_i-1]
  end 
  
  def full?
    cells.all? do |character|
      if character == "X" || character == "O"
        true 
      else
        false
      end 
    end 
  end 
  
  def turn_count
    cells.count{|char| char =="X" || char=="O"}
  end 
  
  def taken?(position) #check board position
    self.cells[position.to_i-1] == "X" || self.cells[position.to_i-1] == "O"
  end
  
  def valid_move?(input)
    input.to_i.between?(1, 9) && !taken?(input)
  end 
  
  def update(position, player)
      self.cells[position.to_i-1] = player.token
  end
  
end 