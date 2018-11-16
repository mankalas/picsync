require 'rails_helper'

RSpec.describe "local_directories/edit", type: :view do
  before(:each) do
    @local_directory = assign(:local_directory, LocalDirectory.create!(
      :path => "/"
    ))
  end

  it "renders the edit local_directory form" do
    render

    assert_select "form[action=?][method=?]", local_directory_path(@local_directory), "post" do

      assert_select "input[name=?]", "local_directory[path]"
    end
  end
end
