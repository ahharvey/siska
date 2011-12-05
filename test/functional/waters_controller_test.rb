require 'test_helper'

class WatersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Water.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Water.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Water.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to water_url(assigns(:water))
  end

  def test_edit
    get :edit, :id => Water.first
    assert_template 'edit'
  end

  def test_update_invalid
    Water.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Water.first
    assert_template 'edit'
  end

  def test_update_valid
    Water.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Water.first
    assert_redirected_to water_url(assigns(:water))
  end

  def test_destroy
    water = Water.first
    delete :destroy, :id => water
    assert_redirected_to waters_url
    assert !Water.exists?(water.id)
  end
end
