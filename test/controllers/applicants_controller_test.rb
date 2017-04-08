require 'test_helper'

class ApplicantsControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get applicants_destroy_url
    assert_response :success
  end

end
