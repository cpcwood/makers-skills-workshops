class Diary
  def initialize(entry_class)
    @entry_class = entry_class
    @entries = []
  end

  def add(title, body)
    @entries << @entry_class.new(title, body)
  end

  def index
    titles = @entries.map do |entry|
      entry.title
    end
    titles.join("\n")
  end
end

class Entry
  attr_reader :title, :body

  def initialize(title, body)
    @title = title
    @body = body
  end
end
