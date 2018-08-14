require "application_system_test_case"

class RecordsTest < ApplicationSystemTestCase
  setup do
    @record = records(:one)
  end

  test "visiting the index" do
    visit records_url
    assert_selector "h1", text: "Records"
  end

  test "creating a Record" do
    visit records_url
    click_on "New Record"

    fill_in "Address", with: @record.address
    fill_in "Address 2", with: @record.address_2
    fill_in "City", with: @record.city
    fill_in "Creation Date", with: @record.creation_date
    fill_in "Import", with: @record.import_id
    fill_in "Lat", with: @record.lat
    fill_in "Long", with: @record.long
    fill_in "Name", with: @record.name
    fill_in "Property Owner", with: @record.property_owner
    fill_in "Purpose", with: @record.purpose
    fill_in "State", with: @record.state
    fill_in "Zip", with: @record.zip
    click_on "Create Record"

    assert_text "Record was successfully created"
    click_on "Back"
  end

  test "updating a Record" do
    visit records_url
    click_on "Edit", match: :first

    fill_in "Address", with: @record.address
    fill_in "Address 2", with: @record.address_2
    fill_in "City", with: @record.city
    fill_in "Creation Date", with: @record.creation_date
    fill_in "Import", with: @record.import_id
    fill_in "Lat", with: @record.lat
    fill_in "Long", with: @record.long
    fill_in "Name", with: @record.name
    fill_in "Property Owner", with: @record.property_owner
    fill_in "Purpose", with: @record.purpose
    fill_in "State", with: @record.state
    fill_in "Zip", with: @record.zip
    click_on "Update Record"

    assert_text "Record was successfully updated"
    click_on "Back"
  end

  test "destroying a Record" do
    visit records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Record was successfully destroyed"
  end
end
