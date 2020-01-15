require 'exercise_3'

describe EmailClient do

  let(:message_class){double :message_class, :new => nil}

  subject{EmailClient.new(message_class)}

  describe '#message' do
    it 'create new message instance' do
      expect(message_class).to receive(:new)
      subject.message
    end
  end
end

describe Message do
  describe '#send' do
    it 'sends new message' do
      expect(subject).to respond_to(:send).with(2).arguments
    end
  end
end

describe SayHello do

  let(:message_instance){double :entry_instance, :send => nil}
  let(:message_class){double :entry_class}
  let(:email_client_instance){double :email_client_instance, :message => message_instance}
  let(:email_client_class){double :email_client_class, :new => email_client_instance}

  subject{SayHello.new(email_client_class, message_class)}

  describe '#run' do
    it 'sends new email message' do
      expect(message_instance).to receive(:send)
      subject.run
    end
  end
end
