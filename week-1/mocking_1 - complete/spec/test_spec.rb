require 'test'

describe Test do
  let(:answer){double :answer, :correct? => true}
  let(:todays_date){double :todays_date, :to_s => '2019-01-01'}

  let(:answers) do
    [
      answer,
      answer,
      answer
    ]
  end

  subject(:test) { Test.new(todays_date, answers) }

  describe '#pretty_date_taken' do
    it 'returns the date the test was taken, as a string' do
      expect(test.pretty_date_taken).to eq('2019-01-01')
    end
  end

  describe '#score' do
    it 'returns the number of correct answers' do
      expect(test.score).to eq 3
    end
  end
end
