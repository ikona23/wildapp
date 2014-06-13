require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, post: { budget: @post.budget, description: @post.description, how_did_you_here_about_us: @post.how_did_you_here_about_us, owner: @post.owner, parking: @post.parking, publish_date: @post.publish_date, quote: @post.quote, title: @post.title, urgency: @post.urgency, user_id: @post.user_id }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, id: @post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should update post" do
    patch :update, id: @post, post: { budget: @post.budget, description: @post.description, how_did_you_here_about_us: @post.how_did_you_here_about_us, owner: @post.owner, parking: @post.parking, publish_date: @post.publish_date, quote: @post.quote, title: @post.title, urgency: @post.urgency, user_id: @post.user_id }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end
end
