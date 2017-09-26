require 'test_helper'

class MegacitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @megacity = megacities(:one)
  end

  test "should get index" do
    get megacities_url
    assert_response :success
  end

  test "should get new" do
    get new_megacity_url
    assert_response :success
  end

  test "should create megacity" do
    assert_difference('Megacity.count') do
      post megacities_url, params: { megacity: {  } }
    end

    assert_redirected_to megacity_url(Megacity.last)
  end

  test "should show megacity" do
    get megacity_url(@megacity)
    assert_response :success
  end

  test "should get edit" do
    get edit_megacity_url(@megacity)
    assert_response :success
  end

  test "should update megacity" do
    patch megacity_url(@megacity), params: { megacity: {  } }
    assert_redirected_to megacity_url(@megacity)
  end

  test "should destroy megacity" do
    assert_difference('Megacity.count', -1) do
      delete megacity_url(@megacity)
    end

    assert_redirected_to megacities_url
  end
end
