require 'rails_helper'

RSpec.describe "local_files/new", type: :view do
  before(:each) do
    assign(:local_file, LocalFile.new(
      :name => "MyString",
      :path => "MyString",
      :type => "",
      :size => "MyString",
      :md5 => "MyString",
      :extension => "MyString"
    ))
  end

  it "renders new local_file form" do
    render

    assert_select "form[action=?][method=?]", local_files_path, "post" do

      assert_select "input[name=?]", "local_file[name]"

      assert_select "input[name=?]", "local_file[path]"

      assert_select "input[name=?]", "local_file[type]"

      assert_select "input[name=?]", "local_file[size]"

      assert_select "input[name=?]", "local_file[md5]"

      assert_select "input[name=?]", "local_file[extension]"
    end
  end
end
