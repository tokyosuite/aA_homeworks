class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1 
    @name2 = name2 
    @cups = Array.new(6){Array.new(4,:stone)} + [[]] + Array.new(6){Array.new(4,:stone)} + [[]]
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if !(start_pos.between?(0,5) || start_pos.between?(7,13))
      raise "Invalid starting cup" 
    end
    if @cups[start_pos].empty? 
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos].size 
    
    @cups[start_pos] = []
    
    while stones > 0
      next_pos = (start_pos + 1) % 14
      @cups[next_pos] == 6 @cups[next_pos].push(:stone)
      stones -= 1
    end

    render
    next_turn(start_pos)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all?{|x| x.empty?} || @cups[7..12].all?{|x| x.empty?} ? true : false
  end

  def winner
    if one_side_empty? 
      @cups[0].size > @cups[6].size ? @name1 : @cups[0].size < @cups[6].size ? @name2 : :draw
    end
  end
end
