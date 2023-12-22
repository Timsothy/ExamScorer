class DeviseCreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string  :email,              null: false, default: ""
      t.string  :encrypted_password, null: false, default: ""
      t.integer :gender_id,          null: false
      t.string  :last_name,          null: false
      t.string  :first_name,         null: false
      t.string  :last_name_kana,     null: false
      t.string  :first_name_kana,    null: false
      t.string  :school,             null: false
      t.timestamps null: false
    end
  end
end