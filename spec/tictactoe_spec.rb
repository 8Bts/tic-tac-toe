# spec/tictactoe_spec.rb

require_relative '../lib/game_board'
require_relative '../lib/player.rb'
require_relative '../lib/game_play.rb'

# describe 'main.rb functions' do
#   let(:player1) { Player.new('Godson', 'X') }
#   let(:player2) { Player.new('Rasheed', 'Y') }

#   describe '#choose_first' do
#     it 'returns array containing 2 Player objects with random order' do
#       expect(choose_first(player1, player2)).to contain_exactly(player1, player2)
#     end
#   end
# end

describe Player do
  let(:player) { Player.new('MIke', 'X') }

  describe '#make_turn' do
    context 'returns' do
      it 'cell number entered by player on success' do
        expect(player.make_turn(1)).to eql(1)
      end

      it 'string notifying wrong index entered when invalid index passed' do
        expect(player.make_turn(10)).to eql('Wrong index')
      end

      it 'string notifying that cell is already signed' do
        expect(player.make_turn(1)).to eql('The cell with index[1] is already signed, choose another cell on board')
      end
    end
  end

  describe 'reset_turns' do
    it 'empties @turns variable of Player object' do
      player.make_turn(2)
      player.reset_turns
      expect(player.turns).to be_empty
    end
  end
end

describe Array do
  describe '#contain_all?' do
  context 'returns' do
    it 'true when an array contains all elements of an argument' do
      expect([1, 3, 5, 7].contain_all?([3, 1, 7])).to be_truthy
    end
    
    it 'false when an array doesn\'t contain all elements of an argument' do
      expect([1, 3, 5, 7].contain_all?([2, 3, 5])).to be_falsey
      end
    end
  end
end

describe GameBoard do
  describe '#mark_board' do
    context 'returns' do
      it 'sign passed as an argument on success' do
        expect(GameBoard.mark_board(3, 'X')).to eql 'X'
      end
      
      it 'string notifying that cell is already signed' do
        expect(GameBoard.mark_board(3, 'X')).to eql 'The cell with index[3] is already signed, choose another cell on board'
      end
      
      it 'string notifying wrong index entered when invalid index passed' do
        expect(GameBoard.mark_board(32, 'X')).to eql('Wrong index')
      end
    end
  end
  
  describe '#reset_board' do
  it 'restore @@board_cells class variable\'s initial values' do
    GameBoard.reset_board
      expect(GameBoard.board_cells).to contain_exactly(1, 2, 3, 4, 5, 6, 7, 8, 9)
    end  
  end
end

describe GamePlay do
  let(:player) { Player.new('John', 'X') }

  describe 'won?' do
    context 'return' do
      it 'true when Player object passed as an argument has matching turns for winning case' do
        player.make_turn(7)
        player.make_turn(8)
        player.make_turn(9)
        expect(GamePlay.won?(player)).to be_truthy
      end

      it 'false when Player object passed as an argument doesn\'t have matching turns for winning case' do
        player.reset_turns
        expect(GamePlay.won?(player)).to be_falsey
      end
    end  
  end  
end