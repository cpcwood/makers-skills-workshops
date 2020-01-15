class Diary
  attr_reader :entries
  def initialize
    @entries = []
  end

  def add_entries(entry)
    @entries << entry
    'Entry added!'
  end
end
