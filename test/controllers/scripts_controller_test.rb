require 'test_helper'

class ScriptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @script = scripts(:one)
  end

  test "should get index" do
    get scripts_url, as: :json
    assert_response :success
  end

  test "should create script" do
    assert_difference('Script.count') do
      post scripts_url, params: { script: { greeting: @script.greeting, name: @script.name, notes: @script.notes, uuid: @script.uuid } }, as: :json
    end

    assert_response 201
  end

  test "should show script" do
    get script_url(@script), as: :json
    assert_response :success
  end

  test "should update script" do
    patch script_url(@script), params: { script: { greeting: @script.greeting, name: @script.name, notes: @script.notes, uuid: @script.uuid } }, as: :json
    assert_response 200
  end

  test "should destroy script" do
    assert_difference('Script.count', -1) do
      delete script_url(@script), as: :json
    end

    assert_response 204
  end
end
