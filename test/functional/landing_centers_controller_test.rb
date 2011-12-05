require 'test_helper'

class LandingCentersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => LandingCenter.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    LandingCenter.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    LandingCenter.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to landing_center_url(assigns(:landing_center))
  end

  def test_edit
    get :edit, :id => LandingCenter.first
    assert_template 'edit'
  end

  def test_update_invalid
    LandingCenter.any_instance.stubs(:valid?).returns(false)
    put :update, :id => LandingCenter.first
    assert_template 'edit'
  end

  def test_update_valid
    LandingCenter.any_instance.stubs(:valid?).returns(true)
    put :update, :id => LandingCenter.first
    assert_redirected_to landing_center_url(assigns(:landing_center))
  end

  def test_destroy
    landing_center = LandingCenter.first
    delete :destroy, :id => landing_center
    assert_redirected_to landing_centers_url
    assert !LandingCenter.exists?(landing_center.id)
  end
end
