require 'test_helper'

class PlantaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plantum = planta(:one)
  end

  test "should get index" do
    get planta_url
    assert_response :success
  end

  test "should get new" do
    get new_plantum_url
    assert_response :success
  end

  test "should create plantum" do
    assert_difference('Plantum.count') do
      post planta_url, params: { plantum: { altura: @plantum.altura, familia: @plantum.familia, genero: @plantum.genero, germinaciondias: @plantum.germinaciondias, nombre: @plantum.nombre, precio: @plantum.precio } }
    end

    assert_redirected_to plantum_url(Plantum.last)
  end

  test "should show plantum" do
    get plantum_url(@plantum)
    assert_response :success
  end

  test "should get edit" do
    get edit_plantum_url(@plantum)
    assert_response :success
  end

  test "should update plantum" do
    patch plantum_url(@plantum), params: { plantum: { altura: @plantum.altura, familia: @plantum.familia, genero: @plantum.genero, germinaciondias: @plantum.germinaciondias, nombre: @plantum.nombre, precio: @plantum.precio } }
    assert_redirected_to plantum_url(@plantum)
  end

  test "should destroy plantum" do
    assert_difference('Plantum.count', -1) do
      delete plantum_url(@plantum)
    end

    assert_redirected_to planta_url
  end
end
