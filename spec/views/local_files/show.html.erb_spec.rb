require 'rails_helper'

RSpec.describe "local_files/show", type: :view do
  before(:each) do
    @local_file = assign(:local_file, LocalFile.create!(
      :name => "Name",
      :path => "Path",
      :type => "Type",
      :size => "Size",
      :md5 => "Md5",
      :extension => "Extension"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Path/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/Md5/)
    expect(rendered).to match(/Extension/)
  end
end
