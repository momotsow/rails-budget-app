require 'rails_helper'

RSpec.describe 'Groups', type: :request do
  include Devise::Test::IntegrationHelpers
  before do
    @user = User.create(name: 'abc', password: '123456', email: 'abc@gmail.com')
    @group = @user.groups.create(name: 'trip', icon: 'https://google.com')
    sign_in @user
  end

  describe 'GET /index' do
    it 'returns http success' do
      get groups_path
      expect(response).to have_http_status(:success)
    end
  end
end
