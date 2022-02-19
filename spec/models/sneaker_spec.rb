require 'rails_helper'

RSpec.describe Sneaker, type: :model do
  describe 'validations' do
    context 'on create' do
      it 'should have a valid factory' do
        expect(build(:sneaker)).to be_valid
      end

      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:model) }
      it { should validate_length_of(:description).is_at_least(10) }
      it { should validate_length_of(:description).is_at_most(250) }
      it { should validate_length_of(:description).allow_nil }
    end
  end
end
