require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get projects_dashboard_url
    assert_response :success
  end

  test "should get new_project" do
    get projects_new_project_url
    assert_response :success
  end

  test "should get create" do
    get projects_create_url
    assert_response :success
  end

end
