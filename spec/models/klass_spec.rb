require 'rails_helper'

RSpec.describe Klass, type: :model do
  describe "(Constructor)" do
    it "should default status to proposal" do
      expect(Klass.new.proposal?).to be true
    end
  end

  describe "(scopes)" do
    describe '.proposal' do
      it "should only return proposals" do
        FactoryGirl.create(:klass, status: Klass.statuses[:accepted])
        FactoryGirl.create(:class_proposal)
        expect(Klass.proposal.pluck(:status)).to eql([0])
      end
    end
  end
end
