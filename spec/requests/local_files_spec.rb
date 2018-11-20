require 'rails_helper'

RSpec.describe "LocalFiles", type: :request do
  describe "GET /local_files" do
    it "works! (now write some real specs)" do
      get local_files_path
      expect(response).to have_http_status(200)
    end
  end
end
