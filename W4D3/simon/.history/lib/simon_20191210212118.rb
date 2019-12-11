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
    puts "Let's play!"
    puts "first color:" 
    show_sequence
    system("clear")
    require_sequence
    if !@game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    puts add_random_color
  end

  def require_sequence
    
    color = gets.chomp
    until @game_over
      @seq.each do |c|
        if c == color
          puts "type next color: #{show_sequence}"
          system("clear")
          color = gets.chomp
          @game_over = false
          round_success_message
        else 
          @game_over = true
        end
      end
    end
  end
# require "byebug"
  def add_random_color
    # debugger
    @seq += COLORS.sample(1)
    @seq
  end

  def round_success_message
    if !@game_over
      puts "yay! next sequence!"
    end
  end

  def game_over_message
    if @game_over
      puts "You Lose!"
    end
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

if __FILE__ == $PROGRAM_NAME
  s = Simon.new
  s.play
end