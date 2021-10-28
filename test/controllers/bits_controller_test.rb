require "test_helper"

class BitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bit = bits(:one)
  end

  test "should get index" do
    get bits_url, as: :json
    assert_response :success
  end

  test "should create bit" do
    assert_difference('Bit.count') do
      post bits_url, params: { bit: { description: @bit.description, footline: @bit.footline, headline: @bit.headline, title: @bit.title } }, as: :json
    end

    assert_response 201
  end

  test "should show bit" do
    get bit_url(@bit), as: :json
    assert_response :success
  end

  test "should update bit" do
    patch bit_url(@bit), params: { bit: { description: @bit.description, footline: @bit.footline, headline: @bit.headline, title: @bit.title } }, as: :json
    assert_response 200
  end

  test "should destroy bit" do
    assert_difference('Bit.count', -1) do
      delete bit_url(@bit), as: :json
    end

    assert_response 204
  end
end
