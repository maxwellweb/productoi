require 'test_helper'

class PaginasControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Pagina.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Pagina.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Pagina.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to pagina_url(assigns(:pagina))
  end

  def test_edit
    get :edit, :id => Pagina.first
    assert_template 'edit'
  end

  def test_update_invalid
    Pagina.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Pagina.first
    assert_template 'edit'
  end

  def test_update_valid
    Pagina.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Pagina.first
    assert_redirected_to pagina_url(assigns(:pagina))
  end

  def test_destroy
    pagina = Pagina.first
    delete :destroy, :id => pagina
    assert_redirected_to paginas_url
    assert !Pagina.exists?(pagina.id)
  end
end
