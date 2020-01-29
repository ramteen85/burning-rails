require 'test_helper'

class PlanesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plane = planes(:one)
  end

  test "should get index" do
    get planes_url
    assert_response :success
  end

  test "should get new" do
    get new_plane_url
    assert_response :success
  end

  test "should create plane" do
    assert_difference('Plane.count') do
      post planes_url, params: { plane: { A1: @plane.A1, A2: @plane.A2, A3: @plane.A3, A4: @plane.A4, A5: @plane.A5, B1: @plane.B1, B2: @plane.B2, B3: @plane.B3, B4: @plane.B4, B5: @plane.B5, C1: @plane.C1, C2: @plane.C2, C3: @plane.C3, C4: @plane.C4, C5: @plane.C5, name: @plane.name } }
    end

    assert_redirected_to plane_url(Plane.last)
  end

  test "should show plane" do
    get plane_url(@plane)
    assert_response :success
  end

  test "should get edit" do
    get edit_plane_url(@plane)
    assert_response :success
  end

  test "should update plane" do
    patch plane_url(@plane), params: { plane: { A1: @plane.A1, A2: @plane.A2, A3: @plane.A3, A4: @plane.A4, A5: @plane.A5, B1: @plane.B1, B2: @plane.B2, B3: @plane.B3, B4: @plane.B4, B5: @plane.B5, C1: @plane.C1, C2: @plane.C2, C3: @plane.C3, C4: @plane.C4, C5: @plane.C5, name: @plane.name } }
    assert_redirected_to plane_url(@plane)
  end

  test "should destroy plane" do
    assert_difference('Plane.count', -1) do
      delete plane_url(@plane)
    end

    assert_redirected_to planes_url
  end
end
