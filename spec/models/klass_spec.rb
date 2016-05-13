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
end
