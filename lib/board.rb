class Board
  attr_accessor :cells
  def initialize 
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  
  def board
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  
  def reset! 
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  
  def display
    puts "  #{@cells[0]} | #{@cells[1]} | #{@cells[2]}  "
    puts "-----------"
    puts "  #{@cells[3]} | #{@cells[4]} | #{@cells[5]}  "
    puts "-----------"
    puts "  #{@cells[6]} | #{@cells[7]} | #{@cells[8]}  "
  end
  
  def position(x)
    y = x.to_i - 1
    @cells[y]
  end
  
  def full?
    @cells.none? (" ")
  end
  
  def turn_count
    counter = [ ]
    @cells.each do |item|
      if item == " "
        counter << item 
      end
    end
    9 - counter.length
  end
  
  def taken?(x)
    @cells[x.to_i- 1] == "X" || @cells[x.to_i - 1] == "O"
  end
  
  def valid_move?(x)
    x.to_i.between?(1, 9) && !taken?(x)
  end
  
  def update(x, player)
    #if (player.token == "X" || "O") && valid_move?(x)
    if valid_move?(x)
      y = x.to_i - 1
      @cells[y] = "#{player.token}"
    end
  end
end