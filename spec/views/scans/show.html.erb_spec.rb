require 'rails_helper'

RSpec.describe "scans/show", type: :view do
  before(:each) do
    @scan = assign(:scan, Scan.create!(
      :status => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
