require 'rails_helper'

RSpec.describe EnumField, type: :model do
  subject(:enum_field) { EnumField.new(:status, 'TEST', nil) }

  describe '#enum_iteratee' do
    it "is a setter and getter" do
      expect(enum_field).to respond_to(:enum_iteratee)
      expect(enum_field).to respond_to('enum_iteratee=')
    end
  end

  context('when the current iteratee is the assigned enum') do
    before :each do
      enum_field.enum_iteratee = 'TEST'
    end

    it "#caption contains the (humanized) enum_iteratee" do
      expect(enum_field.caption).to eql('Test')
    end

    it '#css_classes contains "current"' do
      expect(enum_field.css_classes).to include('current')
    end


  end

  context('when the current iteratee is NOT the assigned enum') do
    before :each do
      enum_field.enum_iteratee = 'ANOTHER OPTION'
    end

    it '#caption asks if you want the other option?' do
      expect(enum_field.caption).to eql('Another option?')
    end

    it '#css_classes contains "hollow"' do
      expect(enum_field.css_classes).to include('hollow')
    end
  end

end
