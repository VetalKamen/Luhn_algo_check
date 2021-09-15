# frozen_string_literal: true

require_relative '../../Home_task_4/User'
require_relative '../../Home_task_4/Card'

RSpec.describe User do
  subject {
    create(:user)
  }
  let(:credit_card) {
    create(:card)
  }

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_instance_of User
    end
    it 'is an adult?' do
      subject.age = 14
      expect(subject.adult?).to eq(true)
    end
    it 'is not an adult?' do
      subject.age = 12
      expect(subject.adult?).to eq(false)
    end
  end

  describe 'Adding a card to the user' do
    it 'should add the card' do
      subject.add_card(credit_card)
      expect(subject.cards.count).to eq(1)
    end
  end

end