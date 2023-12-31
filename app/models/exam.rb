class Exam < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :student
  belongs_to :grade
  belongs_to :exam_name

  validates :grade_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :exam_name_id, numericality: { other_than: 0, message: "can't be blank" }
end
