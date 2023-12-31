class CreateExams < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.integer    :grade_id, null: false
      t.integer    :exam_name_id, null: false
      t.integer    :japanese_score
      t.integer    :japanese_average_score
      t.integer    :mathematics_score
      t.integer    :mathematics_average_score
      t.integer    :english_score
      t.integer    :english_average_score
      t.integer    :sosial_score
      t.integer    :sosial_average_score
      t.integer    :science_score
      t.integer    :science_average_score
      t.integer    :total_score
      t.integer    :rank
      t.references :student, null: false, foreign_key: true
      t.timestamps
    end
  end
end
