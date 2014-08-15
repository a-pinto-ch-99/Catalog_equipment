require 'rails_helper'

describe EquipmentController do

  describe "GET 'root url'" do
    it "should be successful" do
      get '/'
      expect(response).to have_http_status(:success)
    end
  end
end
