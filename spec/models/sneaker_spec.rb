require 'rails_helper'

RSpec.describe Sneaker, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:model) }
    it do
      should(
        validate_length_of(:description)
          .is_at_least(10)
          .is_at_most(250)
          .allow_nil,
      )
    end
  end
end
