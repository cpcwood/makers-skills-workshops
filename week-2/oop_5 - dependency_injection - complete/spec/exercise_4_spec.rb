require 'exercise_4'

describe Greeter do

  let(:kernel){double :kernel, :gets => 'test'}
  let(:stdout){double :stdout}

  subject{Greeter.new(kernel, stdout)}

  describe '#greet' do
    it 'puts out a name' do
      expect{subject.greet}.to output("What is your name?\nHello, test\n").to_stdout
    end
  end
end
