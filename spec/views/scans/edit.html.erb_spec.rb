require 'rails_helper'

RSpec.describe "scans/edit", type: :view do
  before(:each) do
    @scan = assign(:scan, Scan.create!(
      :status => 1
    ))
  end

  it "renders the edit scan form" do
    render

    assert_select "form[action=?][method=?]", scan_path(@scan), "post" do

      assert_select "input[name=?]", "scan[status]"
    end
  end
end
