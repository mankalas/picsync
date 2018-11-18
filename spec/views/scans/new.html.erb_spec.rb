require 'rails_helper'

RSpec.describe "scans/new", type: :view do
  before(:each) do
    assign(:scan, Scan.new(
      :status => 1
    ))
  end

  it "renders new scan form" do
    render

    assert_select "form[action=?][method=?]", scans_path, "post" do

      assert_select "input[name=?]", "scan[status]"
    end
  end
end
