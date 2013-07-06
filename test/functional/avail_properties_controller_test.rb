require 'test_helper'

class AvailPropertiesControllerTest < ActionController::TestCase
  setup do
    @avail_property = avail_properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:avail_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create avail_property" do
    assert_difference('AvailProperty.count') do
      post :create, avail_property: { available_units: @avail_property.available_units, location: @avail_property.location, name: @avail_property.name, sold_out_units: @avail_property.sold_out_units, total_number_of_units: @avail_property.total_number_of_units, unit_price: @avail_property.unit_price }
    end

    assert_redirected_to avail_property_path(assigns(:avail_property))
  end

  test "should show avail_property" do
    get :show, id: @avail_property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @avail_property
    assert_response :success
  end

  test "should update avail_property" do
    put :update, id: @avail_property, avail_property: { available_units: @avail_property.available_units, location: @avail_property.location, name: @avail_property.name, sold_out_units: @avail_property.sold_out_units, total_number_of_units: @avail_property.total_number_of_units, unit_price: @avail_property.unit_price }
    assert_redirected_to avail_property_path(assigns(:avail_property))
  end

  test "should destroy avail_property" do
    assert_difference('AvailProperty.count', -1) do
      delete :destroy, id: @avail_property
    end

    assert_redirected_to avail_properties_path
  end
end
