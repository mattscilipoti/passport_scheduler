require 'rails_helper'

RSpec.describe Teacher, type: :model do

  before :all do # :all is faster and safe, because class is read-only
    FactoryGirl.create(:user, name: 'NonTeacher1')
    @teachers =[]
    2.times do
      teacher = FactoryGirl.build(:teacher)
      FactoryGirl.create(:klass, teacher: teacher)
      @teachers << teacher
    end
    # verify setup
    expect(User.count).to eql(3)
  end

  after :all do
    DatabaseCleaner.clean_with :truncation
  end

  describe '.all' do
    it "returns the subset of Users that are Teachers" do
      expect(Teacher.all).to match_array(@teachers)
    end
  end

  describe '.count' do
    it "returns the count of subset of Users that are Teachers" do
      expect(Teacher.count).to eql(@teachers.length)
    end
  end
end
