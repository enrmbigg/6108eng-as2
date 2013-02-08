require 'test_helper'

class AnnoucemmentsControllerTest < ActionController::TestCase
  setup do
    @annoucemment = annoucemments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:annoucemments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create annoucemment" do
    assert_difference('Annoucemment.count') do
      post :create, annoucemment: { body: @annoucemment.body, title: @annoucemment.title }
    end

    assert_redirected_to annoucemment_path(assigns(:annoucemment))
  end

  test "should show annoucemment" do
    get :show, id: @annoucemment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @annoucemment
    assert_response :success
  end

  test "should update annoucemment" do
    put :update, id: @annoucemment, annoucemment: { body: @annoucemment.body, title: @annoucemment.title }
    assert_redirected_to annoucemment_path(assigns(:annoucemment))
  end

  test "should destroy annoucemment" do
    assert_difference('Annoucemment.count', -1) do
      delete :destroy, id: @annoucemment
    end

    assert_redirected_to annoucemments_path
  end
end
