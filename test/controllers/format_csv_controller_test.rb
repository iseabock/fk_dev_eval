require 'test_helper'

class FormatCsvControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get format_csv_new_url
    assert_response :success
  end

end
