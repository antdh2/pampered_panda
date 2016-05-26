require 'test_helper'

class VenuesControllerTest < ActionController::TestCase
  setup do
    @venue = venues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:venues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venue" do
    assert_difference('Venue.count') do
      post :create, venue: { venue_addr1: @venue.venue_addr1, venue_addr2: @venue.venue_addr2, venue_city: @venue.venue_city, venue_name: @venue.venue_name, venue_paypal_email: @venue.venue_paypal_email, venue_postcode: @venue.venue_postcode, venue_town: @venue.venue_town }
    end

    assert_redirected_to venue_path(assigns(:venue))
  end

  test "should show venue" do
    get :show, id: @venue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venue
    assert_response :success
  end

  test "should update venue" do
    patch :update, id: @venue, venue: { venue_addr1: @venue.venue_addr1, venue_addr2: @venue.venue_addr2, venue_city: @venue.venue_city, venue_name: @venue.venue_name, venue_paypal_email: @venue.venue_paypal_email, venue_postcode: @venue.venue_postcode, venue_town: @venue.venue_town }
    assert_redirected_to venue_path(assigns(:venue))
  end

  test "should destroy venue" do
    assert_difference('Venue.count', -1) do
      delete :destroy, id: @venue
    end

    assert_redirected_to venues_path
  end
end
