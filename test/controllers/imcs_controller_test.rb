require "test_helper"

class ImcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @imc = imcs(:one)
  end

  test "should get index" do
    get imcs_url, as: :json
    assert_response :success
  end

  test "should create imc" do
    assert_difference("Imc.count") do
      post imcs_url, params: { imc: { altura: @imc.altura, peso: @imc.peso } }, as: :json
    end

    assert_response :created
  end

  test "should show imc" do
    get imc_url(@imc), as: :json
    assert_response :success
  end

  test "should update imc" do
    patch imc_url(@imc), params: { imc: { altura: @imc.altura, peso: @imc.peso } }, as: :json
    assert_response :success
  end

  test "should destroy imc" do
    assert_difference("Imc.count", -1) do
      delete imc_url(@imc), as: :json
    end

    assert_response :no_content
  end
end
