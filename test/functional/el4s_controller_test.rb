require 'test_helper'

class El4sControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => EL4.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    EL4.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    EL4.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to el4_url(assigns(:el4))
  end

  def test_edit
    get :edit, :id => EL4.first
    assert_template 'edit'
  end

  def test_update_invalid
    EL4.any_instance.stubs(:valid?).returns(false)
    put :update, :id => EL4.first
    assert_template 'edit'
  end

  def test_update_valid
    EL4.any_instance.stubs(:valid?).returns(true)
    put :update, :id => EL4.first
    assert_redirected_to el4_url(assigns(:el4))
  end

  def test_destroy
    el4 = EL4.first
    delete :destroy, :id => el4
    assert_redirected_to el4s_url
    assert !EL4.exists?(el4.id)
  end
end
