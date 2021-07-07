require "test_helper"

class CuricularsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curicular = curiculars(:one)
  end

  test "should get index" do
    get curiculars_url
    assert_response :success
  end

  test "should get new" do
    get new_curicular_url
    assert_response :success
  end

  test "should create curicular" do
    assert_difference('Curicular.count') do
      post curiculars_url, params: { curicular: { activity: @curicular.activity, year: @curicular.year } }
    end

    assert_redirected_to curicular_url(Curicular.last)
  end

  test "should show curicular" do
    get curicular_url(@curicular)
    assert_response :success
  end

  test "should get edit" do
    get edit_curicular_url(@curicular)
    assert_response :success
  end

  test "should update curicular" do
    patch curicular_url(@curicular), params: { curicular: { activity: @curicular.activity, year: @curicular.year } }
    assert_redirected_to curicular_url(@curicular)
  end

  test "should destroy curicular" do
    assert_difference('Curicular.count', -1) do
      delete curicular_url(@curicular)
    end

    assert_redirected_to curiculars_url
  end
end
