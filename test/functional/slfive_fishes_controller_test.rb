require 'test_helper'

class SlfiveFishesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => SlfiveFish.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    SlfiveFish.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    SlfiveFish.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to slfive_fish_url(assigns(:slfive_fish))
  end

  def test_edit
    get :edit, :id => SlfiveFish.first
    assert_template 'edit'
  end

  def test_update_invalid
    SlfiveFish.any_instance.stubs(:valid?).returns(false)
    put :update, :id => SlfiveFish.first
    assert_template 'edit'
  end

  def test_update_valid
    SlfiveFish.any_instance.stubs(:valid?).returns(true)
    put :update, :id => SlfiveFish.first
    assert_redirected_to slfive_fish_url(assigns(:slfive_fish))
  end

  def test_destroy
    slfive_fish = SlfiveFish.first
    delete :destroy, :id => slfive_fish
    assert_redirected_to slfive_fishes_url
    assert !SlfiveFish.exists?(slfive_fish.id)
  end
end
