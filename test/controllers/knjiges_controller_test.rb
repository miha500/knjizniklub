require 'test_helper'

class KnjigesControllerTest < ActionController::TestCase
  setup do
    @knjige = knjiges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:knjiges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create knjige" do
    assert_difference('Knjige.count') do
      post :create, knjige: { avtor: @knjige.avtor, datum_izdaje: @knjige.datum_izdaje, naslov: @knjige.naslov, opis: @knjige.opis }
    end

    assert_redirected_to knjige_path(assigns(:knjige))
  end

  test "should show knjige" do
    get :show, id: @knjige
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @knjige
    assert_response :success
  end

  test "should update knjige" do
    patch :update, id: @knjige, knjige: { avtor: @knjige.avtor, datum_izdaje: @knjige.datum_izdaje, naslov: @knjige.naslov, opis: @knjige.opis }
    assert_redirected_to knjige_path(assigns(:knjige))
  end

  test "should destroy knjige" do
    assert_difference('Knjige.count', -1) do
      delete :destroy, id: @knjige
    end

    assert_redirected_to knjiges_path
  end
end
