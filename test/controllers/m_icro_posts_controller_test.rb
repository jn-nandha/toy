require 'test_helper'

class MIcroPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @m_icro_post = m_icro_posts(:one)
  end

  test "should get index" do
    get m_icro_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_m_icro_post_url
    assert_response :success
  end

  test "should create m_icro_post" do
    assert_difference('MIcroPost.count') do
      post m_icro_posts_url, params: { m_icro_post: { content: @m_icro_post.content, user_id: @m_icro_post.user_id } }
    end

    assert_redirected_to m_icro_post_url(MIcroPost.last)
  end

  test "should show m_icro_post" do
    get m_icro_post_url(@m_icro_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_m_icro_post_url(@m_icro_post)
    assert_response :success
  end

  test "should update m_icro_post" do
    patch m_icro_post_url(@m_icro_post), params: { m_icro_post: { content: @m_icro_post.content, user_id: @m_icro_post.user_id } }
    assert_redirected_to m_icro_post_url(@m_icro_post)
  end

  test "should destroy m_icro_post" do
    assert_difference('MIcroPost.count', -1) do
      delete m_icro_post_url(@m_icro_post)
    end

    assert_redirected_to m_icro_posts_url
  end
end
