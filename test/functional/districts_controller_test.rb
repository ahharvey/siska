require 'test_helper'

class DistrictsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => District.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    District.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    District.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to district_url(assigns(:district))
  end

  def test_edit
    get :edit, :id => District.first
    assert_template 'edit'
  end

  def test_update_invalid
    District.any_instance.stubs(:valid?).returns(false)
    put :update, :id => District.first
    assert_template 'edit'
  end

  def test_update_valid
    District.any_instance.stubs(:valid?).returns(true)
    put :update, :id => District.first
    assert_redirected_to district_url(assigns(:district))
  end

  def test_destroy
    district = District.first
    delete :destroy, :id => district
    assert_redirected_to districts_url
    assert !District.exists?(district.id)
  end
end
