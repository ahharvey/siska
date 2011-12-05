require 'test_helper'

class GearsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Gear.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Gear.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Gear.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to gear_url(assigns(:gear))
  end

  def test_edit
    get :edit, :id => Gear.first
    assert_template 'edit'
  end

  def test_update_invalid
    Gear.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Gear.first
    assert_template 'edit'
  end

  def test_update_valid
    Gear.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Gear.first
    assert_redirected_to gear_url(assigns(:gear))
  end

  def test_destroy
    gear = Gear.first
    delete :destroy, :id => gear
    assert_redirected_to gears_url
    assert !Gear.exists?(gear.id)
  end
end
