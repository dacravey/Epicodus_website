require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    visit lessons_path
    click_on 'Add Lesson'
    fill_in 'Title', with: 'Sample Title'
    fill_in 'Body', with: 'Sample Body'
    click_on 'Create Lesson'
    expect(page).to have_content 'Lessons'
  end

  it "gives error if title or body left empty" do
    visit lessons_path
    click_on 'Add Lesson'
    fill_in 'Title', with: 'Sample Title'
    click_on 'Create Lesson'
    expect(page).to have_content 'errors'
  end
end
