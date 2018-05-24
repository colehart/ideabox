require 'rails_helper'

describe User, type: :model do
  describe 'relationships' do
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_presence_of(:password) }
  end

  describe 'roles' do
    it 'can be created as an admin' do
      role_type = 'admin'
      admin_user = User.create(username: 'Dee', password: 'password', role: 1)


      expect(admin_user.role).to eq(role_type)
      expect(admin_user.admin?).to be_truthy
    end
    it 'can be created as a default user' do
      role_type = 'default'
      user = User.create(username: 'Ian', password: 'password123', role: 0)

      expect(user.role).to eq(role_type)
      expect(user.default?).to be_truthy
    end
  end
end
