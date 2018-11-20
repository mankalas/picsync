require 'rails_helper'

RSpec.describe LocalFile, type: :model do
  describe "#validation" do
    context "when two files have the same source" do
      let(:source) { "a" }

      it "is invalid" do
        LocalFile.create!(source: source)
        expect(LocalFile.new(source: source)).to be_invalid
      end
    end
  end
end
