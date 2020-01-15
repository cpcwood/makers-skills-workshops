require 'Date'

class BirthdayList
  def initialize
    @birthdays = []
  end

  def add_birthday(args)
    @birthdays << [args[:name], Date.parse(args[:birthday])]
    'Birthday stored!'
  end

  def print_birthdays
    @birthdays.sort_by!{ |a| a[1] }
    @birthdays.map{|a| "#{a[0]}: #{a[1].strftime('%a %d %b %Y')}\n"}.join
  end

  def check_today
    today = Date.today
    list = @birthdays.select{|a| a[1].mday == today.mday && a[1].mon == today.mon}
    list.empty? ? 'There are no birthdays today!' : list.map{|a| "It's #{a[0]}'s birthday today! They are #{today.year - a[1].year} years old!\n"}.join
  end
end
