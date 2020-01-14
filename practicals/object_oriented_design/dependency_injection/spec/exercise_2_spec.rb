require 'exercise_2'

describe Diary do

  let(:entry_instance){double :entry_instance, :title => 'test', :body => 'test_body'}
  let(:entry_class){double :entry_class, :new => entry_instance}

  subject{Diary.new(entry_class)}

  describe '#add' do
    it 'accepts new entries' do
      expect(subject).to respond_to(:add).with(2).arguments
    end
  end

  describe '#index' do
    it 'returns all titles of entries' do
      subject.add('test', 'test_body')
      expect(subject.index).to eq('test')
    end
  end
end

describe Entry do

  subject{Entry.new('test', 'test_body')}

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
