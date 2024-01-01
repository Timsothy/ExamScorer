class Exam < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :student
  belongs_to :grade
  belongs_to :exam_name

  validates :grade_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :exam_name_id, numericality: { other_than: 0, message: "can't be blank" }

  with_options numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 100,
    message: 'は0以上100以下の半角数値で入力してください'
  }, allow_blank: true do
    validates :japanese_score
    validates :japanese_average_score
    validates :mathematics_score
    validates :mathematics_average_score
    validates :english_score
    validates :english_average_score
    validates :sosial_score
    validates :sosial_average_score
    validates :science_score
    validates :science_average_score
  end

  validates :total_score, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 500,
    message: 'は0以上500以下の半角数値で入力してください'
  }, allow_blank: true

  validates :rank, numericality: {
    only_integer: true,
    message: 'は半角数値で入力してください'
  }, allow_blank: true
end
