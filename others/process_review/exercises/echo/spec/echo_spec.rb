require 'echo'

describe Echo do
  describe '#ask_user_for_input' do
    it 'it asks user for input' do
      expect(STDOUT).to receive(:puts).with('Say something:')
      subject.ask_user_for_input
    end
  end

  describe '#get_user_input' do
    it 'it gets input from user' do
      expect(STDIN).to receive(:gets)
      subject.get_user_input
    end
    it 'it returns user input' do
      allow(STDIN).to receive(:gets).and_return('test')
      expect(subject.get_user_input).to eq('test')
    end
  end

  describe '#response' do
    it 'prints user input with time' do
      allow(Time).to receive(:new).and_return(Time.new(2020, 02, 10, 22, 03))
      expect(STDOUT).to receive(:puts).with("2020-02-10 | 22:03 | You said: 'hello, world'!")
      subject.response('hello, world')
    end
  end
  
  describe '#exit' do
    it 'returns true if input is quit' do
      expect(subject.exit?('exit')).to eq(true)
    end
  end

  describe '#run' do
    it 'program exits if exit is entered' do
      allow(Time).to receive(:new).and_return(Time.new(2020, 02, 10, 22, 03))
      allow(STDIN).to receive(:gets).and_return('test', 'exit')
      expect(STDOUT).to receive(:puts).with('Say something:')
      expect(STDOUT).to receive(:puts).with("2020-02-10 | 22:03 | You said: 'test'!")
      expect(STDOUT).to receive(:puts).with('Say something:')
      expect(STDOUT).to receive(:puts).with('Goodbye!')
      subject.run
    end
  end
end