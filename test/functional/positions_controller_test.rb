require 'test_helper'

class PositionsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Position.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Position.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Position.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to position_url(assigns(:position))
  end

  def test_edit
    get :edit, :id => Position.first
    assert_template 'edit'
  end

  def test_update_invalid
    Position.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Position.first
    assert_template 'edit'
  end

  def test_update_valid
    Position.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Position.first
    assert_redirected_to position_url(assigns(:position))
  end

  def test_destroy
    position = Position.first
    delete :destroy, :id => position
    assert_redirected_to positions_url
    assert !Position.exists?(position.id)
  end
end
