require 'test_helper'

class OfficesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Office.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Office.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Office.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to office_url(assigns(:office))
  end

  def test_edit
    get :edit, :id => Office.first
    assert_template 'edit'
  end

  def test_update_invalid
    Office.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Office.first
    assert_template 'edit'
  end

  def test_update_valid
    Office.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Office.first
    assert_redirected_to office_url(assigns(:office))
  end

  def test_destroy
    office = Office.first
    delete :destroy, :id => office
    assert_redirected_to offices_url
    assert !Office.exists?(office.id)
  end
end
