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

  describe '#materials_fee' do
    subject(:klass) { FactoryGirl.create(:klass, name: 'TEST FEE')}

    it "matches :materials_fee without a '_cents' suffix by default" do
      is_expected.to monetize(:materials_fee)
    end

    it { should accept_values_for(:materials_fee, 0, 1, 3, 10, 1000) }
    it { should_not accept_values_for(:materials_fee, 1001, -1, -3, -1001) }

  end

  describe '#student_age_minimum' do
    subject(:klass) { FactoryGirl.create(:klass, name: "TEST AGE RANGE") }

    it { should accept_values_for(:student_age_minimum, 1, 3, 10, 148) }
    it { should_not accept_values_for(:student_age_minimum, 149, 0, -1, -3, -1001) }
  end

  describe '#student_age_maximum' do
    subject(:klass) { FactoryGirl.create(:klass, name: "TEST AGE RANGE") }
    it { should accept_values_for(:student_age_maximum, 2, 3, 10, 149) }
    it { should_not accept_values_for(:student_age_maximum, 150, 0, 1, -1, -3, -1001) }
  end

  describe '#student_count_minimum' do
    subject(:klass) { FactoryGirl.create(:klass, name: "TEST AGE RANGE") }
    it { should accept_values_for(:student_count_minimum, 1, 3, 10, 1000) }
    it { should_not accept_values_for(:student_count_minimum, 0, -1, -3, -1000) }
  end

  describe '#student_count_maximum' do
    subject(:klass) { FactoryGirl.create(:klass, name: "TEST AGE RANGE") }
    it { should accept_values_for(:student_count_maximum, 2, 3, 10, 1000) }
    it { should_not accept_values_for(:student_count_maximum, 0, 1, -1, -3, -1000) }
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
