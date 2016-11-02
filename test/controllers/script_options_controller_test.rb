require 'test_helper'

class ScriptOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @script_option = script_options(:one)
  end

  test "should get index" do
    get script_options_url, as: :json
    assert_response :success
  end

  test "should create script_option" do
    assert_difference('ScriptOption.count') do
      post script_options_url, params: { script_option: { additional_options: @script_option.additional_options, polymorphic: @script_option.polymorphic, script_id: @script_option.script_id } }, as: :json
    end

    assert_response 201
  end

  test "should show script_option" do
    get script_option_url(@script_option), as: :json
    assert_response :success
  end

  test "should update script_option" do
    patch script_option_url(@script_option), params: { script_option: { additional_options: @script_option.additional_options, polymorphic: @script_option.polymorphic, script_id: @script_option.script_id } }, as: :json
    assert_response 200
  end

  test "should destroy script_option" do
    assert_difference('ScriptOption.count', -1) do
      delete script_option_url(@script_option), as: :json
    end

    assert_response 204
  end
end
