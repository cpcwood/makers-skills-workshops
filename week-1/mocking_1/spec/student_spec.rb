require 'student'

describe Student do
  let(:feedback_1){double :feedback_1, :happiness => 4}
  let(:feedback_2){double :feedback_2, :happiness => 4}
  let(:test_1){double :test_1, :pretty_date_taken => '2015-11-10', :score => 1}
  let(:test_2){double :test_2, :pretty_date_taken => '2015-11-10', :score => 1}
  subject(:student) { Student.new }

  describe '#full_name' do
    it 'returns the student first name and last name' do
      student = Student.new(first_name: "Sian", last_name: "McAvoy")

      expect(student.full_name).to eq "Sian McAvoy"
    end

    it 'defaults to "Joe Bloggs"' do
      expect(student.full_name).to eq "Joe Bloggs"
    end
  end

  describe '#happiness' do
    it 'returns the average happiness reported' do
      # feedback_1 = Feedback.new(4, Date.today)
      # feedback_2 = Feedback.new(4, Date.today)
      student = Student.new(feedbacks: [feedback_1, feedback_2])

      expect(student.happiness).to eq 4
    end

    it 'defaults to zero' do
      expect(student.happiness).to eq 0
    end
  end

  describe '#test_scores' do
    it 'returns all test scores' do
      student = Student.new(tests: [test_1, test_2])

      expect(student.test_scores).to eq({ '2015-11-10' => [1, 1] })
    end

    it 'defaults to being empty' do
      expect(student.test_scores).to be_empty
    end
  end

  describe '#attendance' do
    it 'describes the student attendance' do
    end
  end
end
