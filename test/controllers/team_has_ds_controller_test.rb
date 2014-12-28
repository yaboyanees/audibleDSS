require 'test_helper'

class TeamHasDsControllerTest < ActionController::TestCase
  setup do
    @team_has_d = team_has_ds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_has_ds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_has_d" do
    assert_difference('TeamHasD.count') do
      post :create, team_has_d: { dPlay_id: @team_has_d.dPlay_id, team_id: @team_has_d.team_id }
    end

    assert_redirected_to team_has_d_path(assigns(:team_has_d))
  end

  test "should show team_has_d" do
    get :show, id: @team_has_d
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_has_d
    assert_response :success
  end

  test "should update team_has_d" do
    patch :update, id: @team_has_d, team_has_d: { dPlay_id: @team_has_d.dPlay_id, team_id: @team_has_d.team_id }
    assert_redirected_to team_has_d_path(assigns(:team_has_d))
  end

  test "should destroy team_has_d" do
    assert_difference('TeamHasD.count', -1) do
      delete :destroy, id: @team_has_d
    end

    assert_redirected_to team_has_ds_path
  end
end
