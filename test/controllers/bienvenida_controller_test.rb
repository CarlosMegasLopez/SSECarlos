require 'test_helper'

class BienvenidaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bienvenida_index_url
    assert_response :success
  end

  test "should get hola" do
    get bienvenida_hola_url
    assert_response :success
  end

end
