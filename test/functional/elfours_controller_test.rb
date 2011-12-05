require 'test_helper'

class ElfoursControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Elfour.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Elfour.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Elfour.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to elfour_url(assigns(:elfour))
  end

  def test_edit
    get :edit, :id => Elfour.first
    assert_template 'edit'
  end

  def test_update_invalid
    Elfour.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Elfour.first
    assert_template 'edit'
  end

  def test_update_valid
    Elfour.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Elfour.first
    assert_redirected_to elfour_url(assigns(:elfour))
  end

  def test_destroy
    elfour = Elfour.first
    delete :destroy, :id => elfour
    assert_redirected_to elfours_url
    assert !Elfour.exists?(elfour.id)
  end
end
