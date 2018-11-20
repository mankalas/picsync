require 'rails_helper'

RSpec.describe "local_files/edit", type: :view do
  before(:each) do
    @local_file = assign(:local_file, LocalFile.create!(
      :name => "MyString",
      :path => "MyString",
      :type => "",
      :size => "MyString",
      :md5 => "MyString",
      :extension => "MyString"
    ))
  end

  it "renders the edit local_file form" do
    render

    assert_select "form[action=?][method=?]", local_file_path(@local_file), "post" do

      assert_select "input[name=?]", "local_file[name]"

      assert_select "input[name=?]", "local_file[path]"

      assert_select "input[name=?]", "local_file[type]"

      assert_select "input[name=?]", "local_file[size]"

      assert_select "input[name=?]", "local_file[md5]"

      assert_select "input[name=?]", "local_file[extension]"
    end
  end
end
