require 'test_helper'

class UserRolesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => UserRole.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    UserRole.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    UserRole.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to user_role_url(assigns(:user_role))
  end

  def test_edit
    get :edit, :id => UserRole.first
    assert_template 'edit'
  end

  def test_update_invalid
    UserRole.any_instance.stubs(:valid?).returns(false)
    put :update, :id => UserRole.first
    assert_template 'edit'
  end

  def test_update_valid
    UserRole.any_instance.stubs(:valid?).returns(true)
    put :update, :id => UserRole.first
    assert_redirected_to user_role_url(assigns(:user_role))
  end

  def test_destroy
    user_role = UserRole.first
    delete :destroy, :id => user_role
    assert_redirected_to user_roles_url
    assert !UserRole.exists?(user_role.id)
  end
end
