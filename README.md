# データベース設計

## studentsテーブル

| Column             | Type    | Options                  |
| ------------------ | ------- | ------------------------ |
| email              | string  | null: false, unique:true |
| encrypted_password | string  | null: false              | 
| gender_id          | integer | null: false              |
| last_name          | string  | null: false              |
| first_name         | string  | null: false              |
| last_name_kana     | string  | null: false              |
| first_name_kana    | string  | null: false              |
| school             | string  | null: false              |

### Association

- has_many :tests


## testsテーブル

| Column                    | Type       | Options                       |
| ------------------------- | ---------- | ----------------------------- |
| grade_id                  | integer    | null: false                   |
| test_name_id              | integer    | null: false                   |
| japanese_score            | integer    |                               |
| japanese_average_score    | integer    |                               |
| mathematics_score         | integer    |                               |
| mathematics_average_score | integer    |                               |
| english_score             | integer    |                               |
| english_average_score     | integer    |                               |
| sosial_score              | integer    |                               |
| sosial_average_score      | integer    |                               |
| science_score             | integer    |                               |
| science_average_score     | integer    |                               |
| total_score               | integer    |                               |
| rank                      | integer    |                               |
| student                   | references | null: false foreign_key: true |

### Association

- belongs_to :student