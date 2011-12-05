require 'test_helper'

class SectorsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Sector.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Sector.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Sector.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to sector_url(assigns(:sector))
  end

  def test_edit
    get :edit, :id => Sector.first
    assert_template 'edit'
  end

  def test_update_invalid
    Sector.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Sector.first
    assert_template 'edit'
  end

  def test_update_valid
    Sector.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Sector.first
    assert_redirected_to sector_url(assigns(:sector))
  end

  def test_destroy
    sector = Sector.first
    delete :destroy, :id => sector
    assert_redirected_to sectors_url
    assert !Sector.exists?(sector.id)
  end
end
