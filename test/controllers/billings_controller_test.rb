require 'test_helper'

class BillingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get billings_new_url
    assert_response :success
  end

end
