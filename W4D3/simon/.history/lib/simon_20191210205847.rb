class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    take_turn until @game_over == true
    if @game_over
      game_over_message
      reset_game

    end
  
  end

  def take_turn
    puts 
    show_sequence
    require_sequence
    if !@game_over
      round_success_message
      @sequence_length += 1

    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    puts "first color:"
    color = gets.chomp
    @seq.each do |c|
      if c == color
        puts "type next color:"
        color = gets.chomp
      else
        @game_over = false
      end
    end
    round_success_message
  end
# require "byebug"
  def add_random_color
    # debugger
    @seq += COLORS.sample(1)
  end

  def round_success_message
    game_over_message
    reset_game
  end

  def game_over_message
    
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
