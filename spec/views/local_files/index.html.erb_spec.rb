require 'rails_helper'

RSpec.describe "local_files/index", type: :view do
  before(:each) do
    assign(:local_files, [
      LocalFile.create!(
        :name => "Name",
        :path => "Path",
        :type => "Type",
        :size => "Size",
        :md5 => "Md5",
        :extension => "Extension"
      ),
      LocalFile.create!(
        :name => "Name",
        :path => "Path",
        :type => "Type",
        :size => "Size",
        :md5 => "Md5",
        :extension => "Extension"
      )
    ])
  end

  it "renders a list of local_files" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Path".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Md5".to_s, :count => 2
    assert_select "tr>td", :text => "Extension".to_s, :count => 2
  end
end
