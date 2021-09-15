require_relative '../../Home_task_4/User'
require_relative '../../Home_task_4/Card'

RSpec.describe Card do
  subject do
    create(:card)
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_instance_of Card
    end
  end

  describe 'get_checksum:errors' do
    it 'should be empty_string_error' do
      subject.number = ' '
      expect(subject.get_checksum).to eq('Empty string provided')
    end
    it 'should be not_string_exception' do
      subject.number = 2
      expect(subject.get_checksum).to eq('Is not a String Exception')
    end
    it 'should be invalid_credit_card_error' do
      subject.number = '6703444444544449'
      expect(subject.get_checksum).to eq('Invalid Credit Card number provided')
    end
  end

  describe 'get_checksum:success' do
    it 'should be successful check' do
      subject.number = '5105105105105100'
      expect(subject.get_checksum).to eq("Check successful for #{subject.number}")
    end
  end

end
