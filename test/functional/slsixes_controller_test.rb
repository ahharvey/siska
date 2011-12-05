require 'test_helper'

class SlsixesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Slsix.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Slsix.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Slsix.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to slsix_url(assigns(:slsix))
  end

  def test_edit
    get :edit, :id => Slsix.first
    assert_template 'edit'
  end

  def test_update_invalid
    Slsix.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Slsix.first
    assert_template 'edit'
  end

  def test_update_valid
    Slsix.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Slsix.first
    assert_redirected_to slsix_url(assigns(:slsix))
  end

  def test_destroy
    slsix = Slsix.first
    delete :destroy, :id => slsix
    assert_redirected_to slsixes_url
    assert !Slsix.exists?(slsix.id)
  end
end
