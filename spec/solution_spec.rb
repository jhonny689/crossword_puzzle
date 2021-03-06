require '../solution.rb'

describe '#find_first_common_char' do
    it 'returns the indexes of the intersection of two words' do
        expect(find_first_common_char("road","dad")).to eq([2,1])
    end
    it 'returns the indexes of the intersection of two words' do
        expect(find_first_common_char("dad","road")).to eq([0,3])
    end
    it 'returns null when the words dont intersect' do
        expect(find_first_common_char("abc","def")).to eq(nil)
    end
end

describe '#render_cross' do
    it 'retruns the crossword form of two words in one string' do
        expect(render_cross("road", "dad", [2,1])).to eq("  d \nroad\n  d \n")
    end
end

describe '#CrossWord' do
    it 'returns the crossword form in one string of two words passed in parameters' do
        expect(CrossWord("cat", "hat")).to eq(" h \ncat\n t \n")
        expect(CrossWord("balloon", "bat")).to eq("balloon\na      \nt      \n")
    end
end