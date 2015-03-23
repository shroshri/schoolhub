require 'test_helper'

class StinsfosControllerTest < ActionController::TestCase
  setup do
    @stinsfo = stinsfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stinsfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stinsfo" do
    assert_difference('Stinsfo.count') do
      post :create, stinsfo: { name: @stinsfo.name, place: @stinsfo.place }
    end

    assert_redirected_to stinsfo_path(assigns(:stinsfo))
  end

  test "should show stinsfo" do
    get :show, id: @stinsfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stinsfo
    assert_response :success
  end

  test "should update stinsfo" do
    patch :update, id: @stinsfo, stinsfo: { name: @stinsfo.name, place: @stinsfo.place }
    assert_redirected_to stinsfo_path(assigns(:stinsfo))
  end

  test "should destroy stinsfo" do
    assert_difference('Stinsfo.count', -1) do
      delete :destroy, id: @stinsfo
    end

    assert_redirected_to stinsfos_path
  end
end
