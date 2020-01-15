class SecretDiary
  def initialize(diary)
    @lock_status = true
    @diary = diary.new
  end

  def get_entries
    raise 'Diary is locked!' if @lock_status
    @diary.entries
  end

  def add_entries(entry)
    raise 'Diary is locked!' if @lock_status
    @diary.add_entries(entry)
  end

  def unlock
    @lock_status = false
  end

  def lock
    @lock_status = true
  end
end
