require "rails_helper"

RSpec.shared_examples "top_bar" do |left_contents|
  # Same behavior is triggered also with either `def something; 'some value'; end`
  # or `define_method(:something) { 'some value' }`
  it "returns a div.top-bar" do
    expect(helper.top_bar_component("LEFT")).to have_css('div.top-bar')
  end

  it "nests the left contents in div.top-bar div.top-bar-left" do
    expect(top_bar).to have_css('div.top-bar div.top-bar-left', text: 'LEFT')
  end
end

RSpec.describe ZurbFoundationHelper, :type => :helper do
  describe "#top_bar_component" do
    subject(:top_bar) { helper.top_bar_component("LEFT") }
    include_examples "top_bar"

    context('(with right contents)') do
      subject(:top_bar) { helper.top_bar_component("LEFT", "RIGHT") }
      include_examples "top_bar"

      it "if provided, nests the right contents in div.top-bar div.top-bar-right" do
        expect(top_bar).to have_css('div.top-bar div.top-bar-right', text: 'RIGHT')
      end
    end

    context('(with title contents)') do
      subject(:top_bar) { helper.top_bar_component("LEFT", "RIGHT", "TITLE") }

      it "nests the title contents in div.top-bar div.top-bar-title" do
        expect(top_bar).to have_css('div.top-bar div.top-bar-title', text: 'TITLE')
      end

      it "nests the left & right contents in div.top-bar div" do
        expect(top_bar).to have_css('div.top-bar div div.top-bar-left', text: 'LEFT')
        expect(top_bar).to have_css('div.top-bar div div.top-bar-right', text: 'RIGHT')
      end
    end
  end
end
