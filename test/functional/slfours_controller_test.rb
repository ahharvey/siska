require 'test_helper'

class SlfoursControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Slfour.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Slfour.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Slfour.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to slfour_url(assigns(:slfour))
  end

  def test_edit
    get :edit, :id => Slfour.first
    assert_template 'edit'
  end

  def test_update_invalid
    Slfour.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Slfour.first
    assert_template 'edit'
  end

  def test_update_valid
    Slfour.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Slfour.first
    assert_redirected_to slfour_url(assigns(:slfour))
  end

  def test_destroy
    slfour = Slfour.first
    delete :destroy, :id => slfour
    assert_redirected_to slfours_url
    assert !Slfour.exists?(slfour.id)
  end
end
