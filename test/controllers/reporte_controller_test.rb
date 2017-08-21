require 'test_helper'

class ReporteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reporte_index_url
    assert_response :success
  end

end
