require 'diary'

describe Diary do
  describe '#entries' do
    it 'entry recalled' do
      entry = 'test entry'
      subject.add_entries(entry)
      expect(subject.entries).to eq([entry])
    end
  end
  describe '#add_entries' do
    it 'entry recalled' do
      entry = 'test entry'
      expect(subject.add_entries(entry)).to eq('Entry added!')
    end
  end
end
