require 'rails_helper'

describe "the show a lesson process" do
  it "shows the lesson" do
    lesson = Lesson.create(title: "Rails", body: "Stuff")
    visit lessons_path
    click_on 'Rails'
    expect(page).to have_content 'Stuff'
  end
end
