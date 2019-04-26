require 'test_helper'

class AplicacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aplicacion = aplicacions(:one)
  end

  test "should get index" do
    get aplicacions_url
    assert_response :success
  end

  test "should get new" do
    get new_aplicacion_url
    assert_response :success
  end

  test "should create aplicacion" do
    assert_difference('Aplicacion.count') do
      post aplicacions_url, params: { aplicacion: { descripcion: @aplicacion.descripcion, nombre: @aplicacion.nombre } }
    end

    assert_redirected_to aplicacion_url(Aplicacion.last)
  end

  test "should show aplicacion" do
    get aplicacion_url(@aplicacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_aplicacion_url(@aplicacion)
    assert_response :success
  end

  test "should update aplicacion" do
    patch aplicacion_url(@aplicacion), params: { aplicacion: { descripcion: @aplicacion.descripcion, nombre: @aplicacion.nombre } }
    assert_redirected_to aplicacion_url(@aplicacion)
  end

  test "should destroy aplicacion" do
    assert_difference('Aplicacion.count', -1) do
      delete aplicacion_url(@aplicacion)
    end

    assert_redirected_to aplicacions_url
  end
end
