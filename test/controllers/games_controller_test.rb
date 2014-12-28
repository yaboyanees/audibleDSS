require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post :create, game: { ball_pos: @game.ball_pos, clock: @game.clock, down: @game.down, pass_dir: @game.pass_dir, pass_dist: @game.pass_dist, qtr: @game.qtr, result: @game.result, run_dir: @game.run_dir, run_loc: @game.run_loc, run_type: @game.run_type, score_diff: @game.score_diff, side: @game.side, teamHasD_id: @game.teamHasD_id, teamHasO_id: @game.teamHasO_id, yd_line: @game.yd_line, yds_togo: @game.yds_togo }
    end

    assert_redirected_to game_path(assigns(:game))
  end

  test "should show game" do
    get :show, id: @game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game
    assert_response :success
  end

  test "should update game" do
    patch :update, id: @game, game: { ball_pos: @game.ball_pos, clock: @game.clock, down: @game.down, pass_dir: @game.pass_dir, pass_dist: @game.pass_dist, qtr: @game.qtr, result: @game.result, run_dir: @game.run_dir, run_loc: @game.run_loc, run_type: @game.run_type, score_diff: @game.score_diff, side: @game.side, teamHasD_id: @game.teamHasD_id, teamHasO_id: @game.teamHasO_id, yd_line: @game.yd_line, yds_togo: @game.yds_togo }
    assert_redirected_to game_path(assigns(:game))
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete :destroy, id: @game
    end

    assert_redirected_to games_path
  end
end
