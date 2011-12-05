require 'test_helper'

class FishControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Fish.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Fish.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Fish.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to fish_url(assigns(:fish))
  end

  def test_edit
    get :edit, :id => Fish.first
    assert_template 'edit'
  end

  def test_update_invalid
    Fish.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Fish.first
    assert_template 'edit'
  end

  def test_update_valid
    Fish.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Fish.first
    assert_redirected_to fish_url(assigns(:fish))
  end

  def test_destroy
    fish = Fish.first
    delete :destroy, :id => fish
    assert_redirected_to fish_url
    assert !Fish.exists?(fish.id)
  end
end
