require 'rails_helper'

describe "the edit a lesson process" do
  it "edits a lesson" do
    lesson = Lesson.create(title: 'Sinatra', body: 'Sinatra knows this ditty')
    visit lesson_path(lesson)
    click_on 'Edit'
    fill_in 'Title', with: 'wash the dog'
    click_on 'Update Lesson'
    expect(page).to have_content 'successfully'
  end

  it "gives error when no title is entered" do
    lesson = Lesson.create(title: 'Sinatra', body: 'Sinatra knows this ditty')
    visit lesson_path(lesson)
    click_on 'Edit'
    fill_in 'Title', with: ''
    click_on 'Update Lesson'
    expect(page).to have_content 'errors'
  end
end
