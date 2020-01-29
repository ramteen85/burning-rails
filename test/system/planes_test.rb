require "application_system_test_case"

class PlanesTest < ApplicationSystemTestCase
  setup do
    @plane = planes(:one)
  end

  test "visiting the index" do
    visit planes_url
    assert_selector "h1", text: "Planes"
  end

  test "creating a Plane" do
    visit planes_url
    click_on "New Plane"

    fill_in "A1", with: @plane.A1
    fill_in "A2", with: @plane.A2
    fill_in "A3", with: @plane.A3
    fill_in "A4", with: @plane.A4
    fill_in "A5", with: @plane.A5
    fill_in "B1", with: @plane.B1
    fill_in "B2", with: @plane.B2
    fill_in "B3", with: @plane.B3
    fill_in "B4", with: @plane.B4
    fill_in "B5", with: @plane.B5
    fill_in "C1", with: @plane.C1
    fill_in "C2", with: @plane.C2
    fill_in "C3", with: @plane.C3
    fill_in "C4", with: @plane.C4
    fill_in "C5", with: @plane.C5
    fill_in "Name", with: @plane.name
    click_on "Create Plane"

    assert_text "Plane was successfully created"
    click_on "Back"
  end

  test "updating a Plane" do
    visit planes_url
    click_on "Edit", match: :first

    fill_in "A1", with: @plane.A1
    fill_in "A2", with: @plane.A2
    fill_in "A3", with: @plane.A3
    fill_in "A4", with: @plane.A4
    fill_in "A5", with: @plane.A5
    fill_in "B1", with: @plane.B1
    fill_in "B2", with: @plane.B2
    fill_in "B3", with: @plane.B3
    fill_in "B4", with: @plane.B4
    fill_in "B5", with: @plane.B5
    fill_in "C1", with: @plane.C1
    fill_in "C2", with: @plane.C2
    fill_in "C3", with: @plane.C3
    fill_in "C4", with: @plane.C4
    fill_in "C5", with: @plane.C5
    fill_in "Name", with: @plane.name
    click_on "Update Plane"

    assert_text "Plane was successfully updated"
    click_on "Back"
  end

  test "destroying a Plane" do
    visit planes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plane was successfully destroyed"
  end
end
