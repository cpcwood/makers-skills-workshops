require 'exercise_1'

describe Note do

  let(:formatter){double :formatter, :format => nil}

  subject{Note.new('test', 'test_body', formatter)}

  describe '#display' do
    it 'displays notes' do
      expect(formatter).to receive(:format)
      subject.display
    end
  end

  describe '#title' do
    it 'returns title' do
      expect(subject.title).to eq 'test'
    end
  end

  describe '#body' do
    it 'returns body' do
      expect(subject.body).to eq 'test_body'
    end
  end
end

describe NoteFormatter do

  let(:note){double :note, :title => 'test', :body => 'test_body'}

  describe '#format' do
    it 'formats notes' do
      expect(subject.format(note)).to eq "Title: test\ntest_body"
    end
  end
end
