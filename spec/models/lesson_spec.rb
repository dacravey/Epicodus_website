require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :title }
  it { should validate_presence_of :body }
  it { should validate_uniqueness_of :order_number }

  context '#next' do
    it 'returns the lesson with the next-highest order number' do
      current_lesson = Lesson.create({title: 'lesson 1', body: 'here is lesson one', order_number: 1})
      next_lesson = Lesson.create({title: 'lesson 2', body: 'here is lesson two', order_number: 2})
      expect(current_lesson.next).to eq next_lesson
    end
  end

end
