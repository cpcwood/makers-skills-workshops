require 'feedback'

describe Feedback do
  let(:date_instance){double :date_instance}
  subject(:feedback) { Feedback.new(10, date_instance) }

  describe '#happiness' do
    it 'returns the happiness score' do
      expect(feedback.happiness).to eq 10
    end
  end
end
