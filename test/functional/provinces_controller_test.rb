require 'test_helper'

class ProvincesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Province.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Province.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Province.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to province_url(assigns(:province))
  end

  def test_edit
    get :edit, :id => Province.first
    assert_template 'edit'
  end

  def test_update_invalid
    Province.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Province.first
    assert_template 'edit'
  end

  def test_update_valid
    Province.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Province.first
    assert_redirected_to province_url(assigns(:province))
  end

  def test_destroy
    province = Province.first
    delete :destroy, :id => province
    assert_redirected_to provinces_url
    assert !Province.exists?(province.id)
  end
end
