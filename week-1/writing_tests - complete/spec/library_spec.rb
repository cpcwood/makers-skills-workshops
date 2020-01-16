require 'library'

describe Library do
  it 'can find a specific book' do
    expect(subject.find_book('POODR')).to eq({title: 'POODR', author: 'Sandi Metz', subject: 'OOP'})
  end

  it 'can add a new book' do
    subject.add_book({title: 'test'})
    expect(subject.find_book('test')).to eq({title: 'test'})
  end

  it 'can remove a book' do
    subject.remove_book('POODR')
    expect(subject.find_book('POODR')).to eq(nil)
  end

  it 'can list all the books on a specific subject' do
    expect(subject.all_books_by_subject('Ruby')).to eq([{title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'}, {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'}])
  end
end
