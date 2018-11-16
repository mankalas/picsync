require 'rails_helper'

RSpec.describe "local_directories/index", type: :view do
  before(:each) do
    assign(:local_directories, [
      LocalDirectory.create!(
        :path => "/"
      ),
      LocalDirectory.create!(
        :path => "/"
      )
    ])
  end

  it "renders a list of local_directories" do
    render
    assert_select "tr>td", :text => "/".to_s, :count => 2
  end
end
