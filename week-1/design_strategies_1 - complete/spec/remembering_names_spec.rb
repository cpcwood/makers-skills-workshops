require 'remembering_names'

describe '#add_name' do
  it 'returns confirmation message' do
    expect(add_name('Chris')).to eq 'Name Remembered!'
  end
end

describe '#recall_names' do
  it 'recalls given names' do
    expect(recall_names).to eq ['Chris']
  end
end
