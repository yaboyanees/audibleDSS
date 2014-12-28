require 'test_helper'

class OPlaysControllerTest < ActionController::TestCase
  setup do
    @o_play = o_plays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:o_plays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create o_play" do
    assert_difference('OPlay.count') do
      post :create, o_play: { formation: @o_play.formation, name: @o_play.name, picture: @o_play.picture, play_type: @o_play.play_type }
    end

    assert_redirected_to o_play_path(assigns(:o_play))
  end

  test "should show o_play" do
    get :show, id: @o_play
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @o_play
    assert_response :success
  end

  test "should update o_play" do
    patch :update, id: @o_play, o_play: { formation: @o_play.formation, name: @o_play.name, picture: @o_play.picture, play_type: @o_play.play_type }
    assert_redirected_to o_play_path(assigns(:o_play))
  end

  test "should destroy o_play" do
    assert_difference('OPlay.count', -1) do
      delete :destroy, id: @o_play
    end

    assert_redirected_to o_plays_path
  end
end
