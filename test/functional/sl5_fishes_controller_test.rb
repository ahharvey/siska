require 'test_helper'

class Sl5FishesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => SL5Fish.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    SL5Fish.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    SL5Fish.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to sl5_fish_url(assigns(:sl5_fish))
  end

  def test_edit
    get :edit, :id => SL5Fish.first
    assert_template 'edit'
  end

  def test_update_invalid
    SL5Fish.any_instance.stubs(:valid?).returns(false)
    put :update, :id => SL5Fish.first
    assert_template 'edit'
  end

  def test_update_valid
    SL5Fish.any_instance.stubs(:valid?).returns(true)
    put :update, :id => SL5Fish.first
    assert_redirected_to sl5_fish_url(assigns(:sl5_fish))
  end

  def test_destroy
    sl5_fish = SL5Fish.first
    delete :destroy, :id => sl5_fish
    assert_redirected_to sl5_fishes_url
    assert !SL5Fish.exists?(sl5_fish.id)
  end
end
