require 'test_helper'

class UserStoriesControllerTest < ActionController::TestCase
  setup do
    @user_story = user_stories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_story" do
    assert_difference('UserStory.count') do
      post :create, user_story: { content: @user_story.content, title: @user_story.title, user_id: @user_story.user_id }
    end

    assert_redirected_to user_story_path(assigns(:user_story))
  end

  test "should show user_story" do
    get :show, id: @user_story
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_story
    assert_response :success
  end

  test "should update user_story" do
    patch :update, id: @user_story, user_story: { content: @user_story.content, title: @user_story.title, user_id: @user_story.user_id }
    assert_redirected_to user_story_path(assigns(:user_story))
  end

  test "should destroy user_story" do
    assert_difference('UserStory.count', -1) do
      delete :destroy, id: @user_story
    end

    assert_redirected_to user_stories_path
  end
end
