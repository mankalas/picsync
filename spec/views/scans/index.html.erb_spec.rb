require 'rails_helper'

RSpec.describe "scans/index", type: :view do
  before(:each) do
    assign(:scans, [
      Scan.create!(
        :status => 2
      ),
      Scan.create!(
        :status => 2
      )
    ])
  end

  it "renders a list of scans" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
