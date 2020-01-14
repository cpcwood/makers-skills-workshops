class EmailClient
  def initialize(message_class)
    @message_class = message_class
  end

  def message
    @message_class.new
  end
end


class Message
  def send(to, body)
    # Imagine I'm sending an email
  end
end


class SayHello
  def initialize(email_client_class, message_class)
    @email_client_class = email_client_class
    @message_class = message_class
  end

  def run
    email = @email_client_class.new(@message_class)
    email.message.send("friend@example.com", "HELLO!")
  end
end
