require 'rails_helper'

RSpec.describe Klass, type: :model do
  describe "(Constructor)" do
    it "should default status to proposed" do
      expect(Klass.new.proposed?).to be true
    end
  end

  describe "(scopes)" do
    describe '.proposed' do
      it "should only return proposals" do
        FactoryGirl.create(:klass, status: Klass.statuses[:accepted])
        FactoryGirl.create(:class_proposal)
        expect(Klass.proposed.pluck(:status)).to eql([0])
      end
    end
  end

  describe '#student_age_minimum' do
    subject(:klass) { FactoryGirl.create(:klass, name: "TEST AGE RANGE") }
    [0, -1, -10].each do |age_threshold|
      it "must be positive (checking #{age_threshold})" do
        klass.student_age_minimum = age_threshold
        klass.valid?
        expect(klass.errors.full_messages_for(:student_age_minimum)).to_not be_empty
      end
    end
  end

  describe '#student_age_maximum' do
    subject(:klass) { FactoryGirl.create(:klass, name: "TEST AGE RANGE") }
    [0, 1, -10].each do |age_threshold|
      it "must be > 1 (checking #{age_threshold})" do
        klass.student_age_maximum = age_threshold
        klass.valid?
        expect(klass.errors.full_messages_for(:student_age_maximum)).to_not be_empty
      end
    end
  end

  describe '#student_count_minimum' do
    subject(:klass) { FactoryGirl.create(:klass, name: "TEST AGE RANGE") }
    [0, -1, -10].each do |count_threshold|
      it "must be positive (checking #{count_threshold})" do
        klass.student_count_minimum = count_threshold
        klass.valid?
        expect(klass.errors.full_messages_for(:student_count_minimum)).to_not be_empty
      end
    end
  end

  describe '#student_count_maximum' do
    subject(:klass) { FactoryGirl.create(:klass, name: "TEST AGE RANGE") }
    [0, 1, -10].each do |count_threshold|
      it "must be > 1 (checking #{count_threshold})" do
        klass.student_count_maximum = count_threshold
        klass.valid?
        expect(klass.errors.full_messages_for(:student_count_maximum)).to_not be_empty
      end
    end
  end

  describe '#teacher' do
    let(:snape) { FactoryGirl.create(:user, name: 'Snape') }
    subject(:klass) { FactoryGirl.create(:klass, name: "DADA", teacher: snape) }

    it "is a User" do
      expect(klass.teacher).to be_a User
    end

    it "is the assigned teacher" do
      expect(klass.teacher).to be snape
    end
  end
end
