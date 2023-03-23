require 'rails_helper'

RSpec.describe User, type: :model do
  include Devise::Test::IntegrationHelpers
  subject do
    User.new(name: 'motsow', password: '123456', email: 'abc@gmail.com')
  end

  before { subject.save }

  it 'should have valid email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end
end
