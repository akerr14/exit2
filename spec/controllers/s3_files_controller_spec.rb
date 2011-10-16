require 'spec_helper'

describe S3FilesController do

  describe "GET 'refresh'" do
    it "should be successful" do
      get 'refresh'
      response.should be_success
    end
  end

end
