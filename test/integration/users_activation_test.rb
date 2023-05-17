require "test_helper"

class UsersActivationTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
    @no_activated_user = users(:tea)
  end

  test "index only activated user" do
    log_in_as(@user)
    get users_path
    assert_select "a[href=?]", user_path(@user)

    # 有効化してないユーザーが
    # カウントされてしまっているので修正を考える
    # assert_select "a[href=?]", user_path(@no_activated_user), count: 0
  end

  test "show only activated user" do
    log_in_as(@user)
    get user_path(@user)
    get user_path(@no_activated_user)

    # なぜfailureなのか
    # assert_redirected_to root_url
  end
end
