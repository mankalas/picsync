require 'rails_helper'

RSpec.describe "local_directories/new", type: :view do
  before(:each) do
    assign(:local_directory, LocalDirectory.new(
      :path => "/"
    ))
  end

  it "renders new local_directory form" do
    render

    assert_select "form[action=?][method=?]", local_directories_path, "post" do

      assert_select "input[name=?]", "local_directory[path]"
    end
  end
end
