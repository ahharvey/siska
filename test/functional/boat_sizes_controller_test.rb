require 'test_helper'

class BoatSizesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => BoatSize.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    BoatSize.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    BoatSize.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to boat_size_url(assigns(:boat_size))
  end

  def test_edit
    get :edit, :id => BoatSize.first
    assert_template 'edit'
  end

  def test_update_invalid
    BoatSize.any_instance.stubs(:valid?).returns(false)
    put :update, :id => BoatSize.first
    assert_template 'edit'
  end

  def test_update_valid
    BoatSize.any_instance.stubs(:valid?).returns(true)
    put :update, :id => BoatSize.first
    assert_redirected_to boat_size_url(assigns(:boat_size))
  end

  def test_destroy
    boat_size = BoatSize.first
    delete :destroy, :id => boat_size
    assert_redirected_to boat_sizes_url
    assert !BoatSize.exists?(boat_size.id)
  end
end
