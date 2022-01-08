require "test_helper"

class FightersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fighter = fighters(:one)
  end

  test "should get index" do
    get fighters_url, as: :json
    assert_response :success
  end

  test "should create fighter" do
    assert_difference("Fighter.count") do
      post fighters_url, params: { fighter: { H2: @fighter.H2, H5: @fighter.H5, J2H: @fighter.J2H, JH: @fighter.JH, JL: @fighter.JL, JM: @fighter.JM, JS: @fighter.JS, L2: @fighter.L2, L5: @fighter.L5, M2: @fighter.M2, M5: @fighter.M5, M6: @fighter.M6, S2: @fighter.S2, S5: @fighter.S5, character: @fighter.character } }, as: :json
    end

    assert_response :created
  end

  test "should show fighter" do
    get fighter_url(@fighter), as: :json
    assert_response :success
  end

  test "should update fighter" do
    patch fighter_url(@fighter), params: { fighter: { H2: @fighter.H2, H5: @fighter.H5, J2H: @fighter.J2H, JH: @fighter.JH, JL: @fighter.JL, JM: @fighter.JM, JS: @fighter.JS, L2: @fighter.L2, L5: @fighter.L5, M2: @fighter.M2, M5: @fighter.M5, M6: @fighter.M6, S2: @fighter.S2, S5: @fighter.S5, character: @fighter.character } }, as: :json
    assert_response :success
  end

  test "should destroy fighter" do
    assert_difference("Fighter.count", -1) do
      delete fighter_url(@fighter), as: :json
    end

    assert_response :no_content
  end
end
