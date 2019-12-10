class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){Array.new}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup, i|
      if i != 6 && i != 13
        4.times {cup << :stone}
      end
    end
  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos > 12
      raise "Invalid starting cup" 
    elsif @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
    
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []
    cups_idx = start_pos
    until stones.empty?
      cups_idx += 1
      cups_idx = 0 if cups_idx > 13

      if cups_idx == 6
        @cups[cups_idx] << stones.pop if current_player_name == @name1
      elsif cups_idx == 13
        @cups[cups_idx] << stones.pop if current_player_name == @name2
      else
        @cups[cups_idx] << stones.pop
      end
      
      # render
      next_turn(cups_idx)
    end

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 or ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].empty?
      :switch
    else 
      # make_move(ending_cup_idx, current_player_name)
    ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    bottom = @cups[0...6].all? {|cup| cup.empty?}
    top = @cups[7...13].all? {|cup| cup.empty?}

    bottom || top
  end

  def winner
    case @cups[6].count <=> @cups[13].count
    when 0
      :draw
    when 1
      @name1
    when -1
      @name2
    end

  end
end
