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

      it 'string notifying wrong index entered when invalid index entered' do
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

describe GamePlay do
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
end
