class Lesson < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  validates_uniqueness_of :order_number
  
  def next
    lesson = Lesson.find(self.id)
    next_lesson = Lesson.find_by(order_number: lesson.order_number + 1)
  end

end
