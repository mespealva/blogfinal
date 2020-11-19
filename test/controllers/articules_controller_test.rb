require 'test_helper'

class ArticulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articule = articules(:one)
  end

  test "should get index" do
    get articules_url
    assert_response :success
  end

  test "should get new" do
    get new_articule_url
    assert_response :success
  end

  test "should create articule" do
    assert_difference('Articule.count') do
      post articules_url, params: { articule: { content: @articule.content, title: @articule.title, user_id: @articule.user_id } }
    end

    assert_redirected_to articule_url(Articule.last)
  end

  test "should show articule" do
    get articule_url(@articule)
    assert_response :success
  end

  test "should get edit" do
    get edit_articule_url(@articule)
    assert_response :success
  end

  test "should update articule" do
    patch articule_url(@articule), params: { articule: { content: @articule.content, title: @articule.title, user_id: @articule.user_id } }
    assert_redirected_to articule_url(@articule)
  end

  test "should destroy articule" do
    assert_difference('Articule.count', -1) do
      delete articule_url(@articule)
    end

    assert_redirected_to articules_url
  end
end
