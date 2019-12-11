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
      
    end
  end

  def take_turn
    show_sequence
    require_sequence
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

  end

  def game_over_message

  end

  def reset_game

  end
end
