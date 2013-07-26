require 'test_helper'

class NestedHintsControllerTest < ActionController::TestCase
  setup do
    @nested_hint = nested_hints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nested_hints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nested_hint" do
    assert_difference('NestedHint.count') do
      post :create, nested_hint: { hint_id: @nested_hint.hint_id, x: @nested_hint.x, y: @nested_hint.y }
    end

    assert_redirected_to nested_hint_path(assigns(:nested_hint))
  end

  test "should show nested_hint" do
    get :show, id: @nested_hint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nested_hint
    assert_response :success
  end

  test "should update nested_hint" do
    put :update, id: @nested_hint, nested_hint: { hint_id: @nested_hint.hint_id, x: @nested_hint.x, y: @nested_hint.y }
    assert_redirected_to nested_hint_path(assigns(:nested_hint))
  end

  test "should destroy nested_hint" do
    assert_difference('NestedHint.count', -1) do
      delete :destroy, id: @nested_hint
    end

    assert_redirected_to nested_hints_path
  end
end
