require 'calculator'

describe Calculator do
  describe '#add' do
    it 'adds two numbers' do
      expect(subject.add(2, 3)).to eq 5
      expect(subject.add(6, 4)).to eq 10
      expect(subject.add(0, 0)).to eq 0
      expect(subject.add(-1, -1)).to eq -2
      expect(subject.add(Float::INFINITY, 0)).to eq Float::INFINITY
      expect(subject.add(Float::INFINITY, Float::INFINITY)).to eq Float::INFINITY
    end
  end

  describe '#subtract' do
    it 'subtracts two numbers' do
      expect(subject.subtract(3, 2)).to eq 1
      expect(subject.subtract(6, 4)).to eq 2
      expect(subject.subtract(0, 0)).to eq 0
      expect(subject.subtract(-1, -1)).to eq 0
      expect(subject.subtract(Float::INFINITY, 0)).to eq Float::INFINITY
      expect(subject.subtract(Float::INFINITY, Float::INFINITY)).to be_nan
    end
  end
end


describe Print do
  describe '#answer' do
    it 'pretty prints the answer' do
      expect(subject.answer(4)).to eq "The Answer is: 4"
      expect(subject.answer(6)).to eq "The Answer is: 6"
      expect(subject.answer(-1)).to eq "The Answer is: -1"
      expect(subject.answer(0)).to eq "The Answer is: 0"
      expect(subject.answer(Float::INFINITY)).to eq "The Answer is: Infinity"
    end
  end
end
