require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it "saves a new user" do
      a_user = User.new(name: "User name", email: "email@email.com", password_digest: "aaa")
      expect(a_user).to be_valid
    end

    
  end
end
