require 'rails_helper'

RSpec.describe LocalDirectory, type: :model do
  describe "validation" do
    it { expect(LocalDirectory.create(path: "/")).to be_valid }

    it { expect(LocalDirectory.create(path: nil)).to be_invalid }
    it { expect(LocalDirectory.create(path: "/dummy")).to be_invalid}
  end
end
