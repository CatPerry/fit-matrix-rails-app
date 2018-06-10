require 'test_helper'

class MatrixControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get matrix_main_url
    assert_response :success
  end

  test "should get results" do
    get matrix_results_url
    assert_response :success
  end

end
