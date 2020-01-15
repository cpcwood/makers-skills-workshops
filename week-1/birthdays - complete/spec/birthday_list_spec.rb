require 'birthday_list'

describe BirthdayList do
  describe '#add_birthday' do
    it 'gives confirmation once birthday added' do
      expect(subject.add_birthday({:name => 'Chris', :birthday => '19/03/1994'})).to eq 'Birthday stored!'
    end
  end

  describe '#print_birthdays' do
    it 'returns birthdays list in fancy format' do
      subject.add_birthday({:name => 'Chris', :birthday => '19/03/1994'})
      subject.add_birthday({:name => 'Alice', :birthday => '09/02/1997'})
      expect(subject.print_birthdays).to eq "Chris: Sat 19 Mar 1994\nAlice: Sun 09 Feb 1997\n"
    end
    it 'sorts birthdays into date order' do
      subject.add_birthday({:name => 'Chris', :birthday => '19/03/1994'})
      subject.add_birthday({:name => 'Alice', :birthday => '09/02/1997'})
      subject.add_birthday({:name => 'James', :birthday => '09/02/1992'})
      expect(subject.print_birthdays).to eq "James: Sun 09 Feb 1992\nChris: Sat 19 Mar 1994\nAlice: Sun 09 Feb 1997\n"
    end
  end

  describe '#check_today' do
    it 'shows there are no birthdays today' do
      allow(Date).to receive(:today).and_return(Date.parse('26/12/2019'))
      expect(subject.check_today).to eq 'There are no birthdays today!'
    end
    it 'shows whos birthday it is today' do
      allow(Date).to receive(:today).and_return(Date.parse('26/12/2019'))
      subject.add_birthday({:name => 'Alex', :birthday => '26/12/1997'})
      expect(subject.check_today).to eq "It's Alex's birthday today! They are 22 years old!\n"
    end
  end
end
