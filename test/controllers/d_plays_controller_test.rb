require 'test_helper'

class DPlaysControllerTest < ActionController::TestCase
  setup do
    @d_play = d_plays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:d_plays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create d_play" do
    assert_difference('DPlay.count') do
      post :create, d_play: { formation: @d_play.formation, name: @d_play.name, picture: @d_play.picture, play_type: @d_play.play_type }
    end

    assert_redirected_to d_play_path(assigns(:d_play))
  end

  test "should show d_play" do
    get :show, id: @d_play
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @d_play
    assert_response :success
  end

  test "should update d_play" do
    patch :update, id: @d_play, d_play: { formation: @d_play.formation, name: @d_play.name, picture: @d_play.picture, play_type: @d_play.play_type }
    assert_redirected_to d_play_path(assigns(:d_play))
  end

  test "should destroy d_play" do
    assert_difference('DPlay.count', -1) do
      delete :destroy, id: @d_play
    end

    assert_redirected_to d_plays_path
  end
end
