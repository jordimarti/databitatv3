require "application_system_test_case"

class EntsTest < ApplicationSystemTestCase
  setup do
    @ent = ents(:one)
  end

  test "visiting the index" do
    visit ents_url
    assert_selector "h1", text: "Ents"
  end

  test "should create ent" do
    visit ents_url
    click_on "New ent"

    fill_in "Category", with: @ent.category
    fill_in "Name", with: @ent.name
    fill_in "Reviewid", with: @ent.reviewid
    click_on "Create Ent"

    assert_text "Ent was successfully created"
    click_on "Back"
  end

  test "should update Ent" do
    visit ent_url(@ent)
    click_on "Edit this ent", match: :first

    fill_in "Category", with: @ent.category
    fill_in "Name", with: @ent.name
    fill_in "Reviewid", with: @ent.reviewid
    click_on "Update Ent"

    assert_text "Ent was successfully updated"
    click_on "Back"
  end

  test "should destroy Ent" do
    visit ent_url(@ent)
    click_on "Destroy this ent", match: :first

    assert_text "Ent was successfully destroyed"
  end
end
