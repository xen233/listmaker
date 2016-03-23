require 'test_helper'

class MoopeepsControllerTest < ActionController::TestCase
  setup do
    @moopeep = moopeeps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moopeeps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moopeep" do
    assert_difference('Moopeep.count') do
      post :create, moopeep: { email: @moopeep.email, firstname: @moopeep.firstname, surname: @moopeep.surname, username: @moopeep.username }
    end

    assert_redirected_to moopeep_path(assigns(:moopeep))
  end

  test "should show moopeep" do
    get :show, id: @moopeep
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moopeep
    assert_response :success
  end

  test "should update moopeep" do
    patch :update, id: @moopeep, moopeep: { email: @moopeep.email, firstname: @moopeep.firstname, surname: @moopeep.surname, username: @moopeep.username }
    assert_redirected_to moopeep_path(assigns(:moopeep))
  end

  test "should destroy moopeep" do
    assert_difference('Moopeep.count', -1) do
      delete :destroy, id: @moopeep
    end

    assert_redirected_to moopeeps_path
  end
end
