require 'test_helper'

class Project9vksControllerTest < ActionController::TestCase
  setup do
    @project9vk = project9vks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project9vks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project9vk" do
    assert_difference('Project9vk.count') do
      post :create, project9vk: { about: @project9vk.about, attendance: @project9vk.attendance, date: @project9vk.date, done: @project9vk.done, title: @project9vk.title }
    end

    assert_redirected_to project9vk_path(assigns(:project9vk))
  end

  test "should show project9vk" do
    get :show, id: @project9vk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project9vk
    assert_response :success
  end

  test "should update project9vk" do
    patch :update, id: @project9vk, project9vk: { about: @project9vk.about, attendance: @project9vk.attendance, date: @project9vk.date, done: @project9vk.done, title: @project9vk.title }
    assert_redirected_to project9vk_path(assigns(:project9vk))
  end

  test "should destroy project9vk" do
    assert_difference('Project9vk.count', -1) do
      delete :destroy, id: @project9vk
    end

    assert_redirected_to project9vks_path
  end
end
