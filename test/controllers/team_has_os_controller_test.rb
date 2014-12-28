require 'test_helper'

class TeamHasOsControllerTest < ActionController::TestCase
  setup do
    @team_has_o = team_has_os(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_has_os)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_has_o" do
    assert_difference('TeamHasO.count') do
      post :create, team_has_o: { oPlay_id: @team_has_o.oPlay_id, team_id: @team_has_o.team_id }
    end

    assert_redirected_to team_has_o_path(assigns(:team_has_o))
  end

  test "should show team_has_o" do
    get :show, id: @team_has_o
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_has_o
    assert_response :success
  end

  test "should update team_has_o" do
    patch :update, id: @team_has_o, team_has_o: { oPlay_id: @team_has_o.oPlay_id, team_id: @team_has_o.team_id }
    assert_redirected_to team_has_o_path(assigns(:team_has_o))
  end

  test "should destroy team_has_o" do
    assert_difference('TeamHasO.count', -1) do
      delete :destroy, id: @team_has_o
    end

    assert_redirected_to team_has_os_path
  end
end
