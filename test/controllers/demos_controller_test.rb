require "test_helper"

class DemosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @demo = demos(:one)
  end

  test "should get index" do
    get demos_url, as: :json
    assert_response :success
  end

  test "should create demo" do
    assert_difference('Demo.count') do
      post demos_url, params: { demo: { email: @demo.email, name: @demo.name, phone: @demo.phone } }, as: :json
    end

    assert_response 201
  end

  test "should show demo" do
    get demo_url(@demo), as: :json
    assert_response :success
  end

  test "should update demo" do
    patch demo_url(@demo), params: { demo: { email: @demo.email, name: @demo.name, phone: @demo.phone } }, as: :json
    assert_response 200
  end

  test "should destroy demo" do
    assert_difference('Demo.count', -1) do
      delete demo_url(@demo), as: :json
    end

    assert_response 204
  end
end
