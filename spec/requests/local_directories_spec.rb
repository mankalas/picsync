require 'rails_helper'

RSpec.describe "LocalDirectories", type: :request do
  describe "GET /local_directories" do
    it "works! (now write some real specs)" do
      get local_directories_path
      expect(response).to have_http_status(200)
    end
  end
end
