require 'test_helper'

class Sl4sControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => SL4.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    SL4.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    SL4.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to sl4_url(assigns(:sl4))
  end

  def test_edit
    get :edit, :id => SL4.first
    assert_template 'edit'
  end

  def test_update_invalid
    SL4.any_instance.stubs(:valid?).returns(false)
    put :update, :id => SL4.first
    assert_template 'edit'
  end

  def test_update_valid
    SL4.any_instance.stubs(:valid?).returns(true)
    put :update, :id => SL4.first
    assert_redirected_to sl4_url(assigns(:sl4))
  end

  def test_destroy
    sl4 = SL4.first
    delete :destroy, :id => sl4
    assert_redirected_to sl4s_url
    assert !SL4.exists?(sl4.id)
  end
end
