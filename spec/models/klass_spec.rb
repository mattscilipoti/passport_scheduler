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
