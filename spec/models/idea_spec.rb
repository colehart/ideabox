require 'rails_helper'

describe Idea, type: :model do
  context 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_uniqueness_of(:title) }
  end
end
