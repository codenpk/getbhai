require 'test_helper'

class EmergencyContactsControllerTest < ActionController::TestCase
  setup do
    @emergency_contact = emergency_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emergency_contacts)
  end

  test "should create emergency_contact" do
    assert_difference('EmergencyContact.count') do
      post :create, emergency_contact: { contact_no: @emergency_contact.contact_no, email: @emergency_contact.email, name: @emergency_contact.name }
    end

    assert_response 201
  end

  test "should show emergency_contact" do
    get :show, id: @emergency_contact
    assert_response :success
  end

  test "should update emergency_contact" do
    put :update, id: @emergency_contact, emergency_contact: { contact_no: @emergency_contact.contact_no, email: @emergency_contact.email, name: @emergency_contact.name }
    assert_response 204
  end

  test "should destroy emergency_contact" do
    assert_difference('EmergencyContact.count', -1) do
      delete :destroy, id: @emergency_contact
    end

    assert_response 204
  end
end
