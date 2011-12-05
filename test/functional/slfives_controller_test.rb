require 'test_helper'

class SlfivesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Slfive.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Slfive.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Slfive.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to slfive_url(assigns(:slfive))
  end

  def test_edit
    get :edit, :id => Slfive.first
    assert_template 'edit'
  end

  def test_update_invalid
    Slfive.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Slfive.first
    assert_template 'edit'
  end

  def test_update_valid
    Slfive.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Slfive.first
    assert_redirected_to slfive_url(assigns(:slfive))
  end

  def test_destroy
    slfive = Slfive.first
    delete :destroy, :id => slfive
    assert_redirected_to slfives_url
    assert !Slfive.exists?(slfive.id)
  end
end
