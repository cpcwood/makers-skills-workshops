class Notes
  def initialize
    @notes = []
  end

  def add_note(string)
    @notes << string
  end

  def delete_note(number)
    @notes.delete_at(number - 1)
  end

  def show_notes
    list = []
    @notes.each_with_index{|note, i| list << "#{i + 1}. #{note}\n"}
    list.join
  end
end
