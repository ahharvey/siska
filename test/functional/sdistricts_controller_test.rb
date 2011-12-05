require 'test_helper'

class SdistrictsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Sdistrict.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Sdistrict.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Sdistrict.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to sdistrict_url(assigns(:sdistrict))
  end

  def test_edit
    get :edit, :id => Sdistrict.first
    assert_template 'edit'
  end

  def test_update_invalid
    Sdistrict.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Sdistrict.first
    assert_template 'edit'
  end

  def test_update_valid
    Sdistrict.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Sdistrict.first
    assert_redirected_to sdistrict_url(assigns(:sdistrict))
  end

  def test_destroy
    sdistrict = Sdistrict.first
    delete :destroy, :id => sdistrict
    assert_redirected_to sdistricts_url
    assert !Sdistrict.exists?(sdistrict.id)
  end
end
