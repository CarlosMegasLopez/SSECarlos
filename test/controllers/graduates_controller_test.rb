require 'test_helper'

class GraduatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @graduate = graduates(:one)
  end

  test "should get index" do
    get graduates_url
    assert_response :success
  end

  test "should get new" do
    get new_graduate_url
    assert_response :success
  end

  test "should create graduate" do
    assert_difference('Graduate.count') do
      post graduates_url, params: { graduate: { apellido_materno_egresado: @graduate.apellido_materno_egresado, apellido_paterno_egresado: @graduate.apellido_paterno_egresado, calle_egresado: @graduate.calle_egresado, career_id: @graduate.career_id, celular_egresado: @graduate.celular_egresado, codigo_postal_egresado: @graduate.codigo_postal_egresado, colonia_egresado: @graduate.colonia_egresado, correo_electronico_egresado: @graduate.correo_electronico_egresado, nombre_egresado: @graduate.nombre_egresado, otro_telefono_egresado: @graduate.otro_telefono_egresado, sexo_egresado: @graduate.sexo_egresado, status_egresado: @graduate.status_egresado } }
    end

    assert_redirected_to graduate_url(Graduate.last)
  end

  test "should show graduate" do
    get graduate_url(@graduate)
    assert_response :success
  end

  test "should get edit" do
    get edit_graduate_url(@graduate)
    assert_response :success
  end

  test "should update graduate" do
    patch graduate_url(@graduate), params: { graduate: { apellido_materno_egresado: @graduate.apellido_materno_egresado, apellido_paterno_egresado: @graduate.apellido_paterno_egresado, calle_egresado: @graduate.calle_egresado, career_id: @graduate.career_id, celular_egresado: @graduate.celular_egresado, codigo_postal_egresado: @graduate.codigo_postal_egresado, colonia_egresado: @graduate.colonia_egresado, correo_electronico_egresado: @graduate.correo_electronico_egresado, nombre_egresado: @graduate.nombre_egresado, otro_telefono_egresado: @graduate.otro_telefono_egresado, sexo_egresado: @graduate.sexo_egresado, status_egresado: @graduate.status_egresado } }
    assert_redirected_to graduate_url(@graduate)
  end

  test "should destroy graduate" do
    assert_difference('Graduate.count', -1) do
      delete graduate_url(@graduate)
    end

    assert_redirected_to graduates_url
  end
end
