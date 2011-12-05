require 'test_helper'

class Sl5sControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => SL5.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    SL5.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    SL5.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to sl5_url(assigns(:sl5))
  end

  def test_edit
    get :edit, :id => SL5.first
    assert_template 'edit'
  end

  def test_update_invalid
    SL5.any_instance.stubs(:valid?).returns(false)
    put :update, :id => SL5.first
    assert_template 'edit'
  end

  def test_update_valid
    SL5.any_instance.stubs(:valid?).returns(true)
    put :update, :id => SL5.first
    assert_redirected_to sl5_url(assigns(:sl5))
  end

  def test_destroy
    sl5 = SL5.first
    delete :destroy, :id => sl5
    assert_redirected_to sl5s_url
    assert !SL5.exists?(sl5.id)
  end
end
