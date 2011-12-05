require 'test_helper'

class GearCategoriesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => GearCategory.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    GearCategory.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    GearCategory.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to gear_category_url(assigns(:gear_category))
  end

  def test_edit
    get :edit, :id => GearCategory.first
    assert_template 'edit'
  end

  def test_update_invalid
    GearCategory.any_instance.stubs(:valid?).returns(false)
    put :update, :id => GearCategory.first
    assert_template 'edit'
  end

  def test_update_valid
    GearCategory.any_instance.stubs(:valid?).returns(true)
    put :update, :id => GearCategory.first
    assert_redirected_to gear_category_url(assigns(:gear_category))
  end

  def test_destroy
    gear_category = GearCategory.first
    delete :destroy, :id => gear_category
    assert_redirected_to gear_categories_url
    assert !GearCategory.exists?(gear_category.id)
  end
end
