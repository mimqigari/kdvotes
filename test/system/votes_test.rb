require "application_system_test_case"

class VotesTest < ApplicationSystemTestCase
  setup do
    @vote = votes(:one)
  end

  test "visiting the index" do
    visit votes_url
    assert_selector "h1", text: "Votes"
  end

  test "should create vote" do
    visit votes_url
    click_on "New vote"

    fill_in "Apc", with: @vote.apc
    fill_in "Invalidvotes", with: @vote.invalidvotes
    fill_in "Lp", with: @vote.lp
    fill_in "Nnpp", with: @vote.nnpp
    fill_in "Others", with: @vote.others
    fill_in "Pdp", with: @vote.pdp
    fill_in "Pic", with: @vote.pic
    fill_in "Prp", with: @vote.prp
    fill_in "Punit", with: @vote.punit
    fill_in "Totalreg", with: @vote.totalreg
    fill_in "User", with: @vote.user_id
    fill_in "Validvotes", with: @vote.validvotes
    fill_in "Ward", with: @vote.ward
    fill_in "Zlp", with: @vote.zlp
    click_on "Create Vote"

    assert_text "Vote was successfully created"
    click_on "Back"
  end

  test "should update Vote" do
    visit vote_url(@vote)
    click_on "Edit this vote", match: :first

    fill_in "Apc", with: @vote.apc
    fill_in "Invalidvotes", with: @vote.invalidvotes
    fill_in "Lp", with: @vote.lp
    fill_in "Nnpp", with: @vote.nnpp
    fill_in "Others", with: @vote.others
    fill_in "Pdp", with: @vote.pdp
    fill_in "Pic", with: @vote.pic
    fill_in "Prp", with: @vote.prp
    fill_in "Punit", with: @vote.punit
    fill_in "Totalreg", with: @vote.totalreg
    fill_in "User", with: @vote.user_id
    fill_in "Validvotes", with: @vote.validvotes
    fill_in "Ward", with: @vote.ward
    fill_in "Zlp", with: @vote.zlp
    click_on "Update Vote"

    assert_text "Vote was successfully updated"
    click_on "Back"
  end

  test "should destroy Vote" do
    visit vote_url(@vote)
    click_on "Destroy this vote", match: :first

    assert_text "Vote was successfully destroyed"
  end
end
