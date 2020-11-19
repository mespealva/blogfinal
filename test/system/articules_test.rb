require "application_system_test_case"

class ArticulesTest < ApplicationSystemTestCase
  setup do
    @articule = articules(:one)
  end

  test "visiting the index" do
    visit articules_url
    assert_selector "h1", text: "Articules"
  end

  test "creating a Articule" do
    visit articules_url
    click_on "New Articule"

    fill_in "Content", with: @articule.content
    fill_in "Title", with: @articule.title
    fill_in "User", with: @articule.user_id
    click_on "Create Articule"

    assert_text "Articule was successfully created"
    click_on "Back"
  end

  test "updating a Articule" do
    visit articules_url
    click_on "Edit", match: :first

    fill_in "Content", with: @articule.content
    fill_in "Title", with: @articule.title
    fill_in "User", with: @articule.user_id
    click_on "Update Articule"

    assert_text "Articule was successfully updated"
    click_on "Back"
  end

  test "destroying a Articule" do
    visit articules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Articule was successfully destroyed"
  end
end
