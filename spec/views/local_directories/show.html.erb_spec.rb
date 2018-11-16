require 'rails_helper'

RSpec.describe "local_directories/show", type: :view do
  before(:each) do
    @local_directory = assign(:local_directory, LocalDirectory.create!(
      :path => "/"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Path/)
  end
end
