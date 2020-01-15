require 'secret_diary'

describe SecretDiary do

  entry = 'test entry'
  let(:diary_instance){ double :diary_instance, :add_entries => 'Entry added!', :entries => [entry]}
  let(:diary_class){ double :diary_class, :new => diary_instance}
  subject{SecretDiary.new(diary_class)}

  describe '#get_entries' do
    it 'is initialy locked' do
      expect{subject.get_entries}.to raise_error('Diary is locked!')
    end
    it 'entry recalled' do
      subject.unlock
      subject.add_entries(entry)
      expect(diary_instance).to receive(:entries)
      subject.get_entries
    end
  end

  describe '#add_entries' do
    it 'is initialy locked' do
      expect{subject.add_entries('test')}.to raise_error('Diary is locked!')
    end
  end

  describe '#unlock' do
    it 'entry can be added after unlock' do
      subject.unlock
      expect(subject.add_entries(entry)).to eq('Entry added!')
    end
  end

  describe '#lock' do
    it 'entry cannot be added after unlock then lock' do
      subject.unlock
      subject.lock
      expect{subject.add_entries(entry)}.to raise_error('Diary is locked!')
    end
  end

end
