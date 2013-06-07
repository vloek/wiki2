require 'test_helper'

class LinesControllerTest < ActionController::TestCase
  setup do
    @line = lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line" do
    assert_difference('Line.count') do
      post :create, line: { bottom: @line.bottom, height: @line.height, left: @line.left, right: @line.right, slide_id: @line.slide_id, top: @line.top, width: @line.width, x: @line.x, y: @line.y }
    end

    assert_redirected_to line_path(assigns(:line))
  end

  test "should show line" do
    get :show, id: @line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line
    assert_response :success
  end

  test "should update line" do
    put :update, id: @line, line: { bottom: @line.bottom, height: @line.height, left: @line.left, right: @line.right, slide_id: @line.slide_id, top: @line.top, width: @line.width, x: @line.x, y: @line.y }
    assert_redirected_to line_path(assigns(:line))
  end

  test "should destroy line" do
    assert_difference('Line.count', -1) do
      delete :destroy, id: @line
    end

    assert_redirected_to lines_path
  end
end
