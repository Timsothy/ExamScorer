require 'rails_helper'

RSpec.describe Exam, type: :model do
  before do
    @exam = FactoryBot.build(:exam)
  end

  describe 'テストの登録' do
    context 'テストが登録できるとき' do
      it '適切な入力項目が存在すれば登録できる' do
        expect(@exam).to be_valid
      end
      it '学年とテスト名のみで登録できる' do
        @exam.japanese_score = ''
        @exam.japanese_average_score = ''
        @exam.mathematics_score = ''
        @exam.mathematics_average_score = ''
        @exam.english_score = ''
        @exam.english_average_score = ''
        @exam.sosial_score = ''
        @exam.sosial_average_score = ''
        @exam.science_score = ''
        @exam.science_average_score = ''
        @exam.total_score = ''
        @exam.rank = ''
        expect(@exam).to be_valid
      end
    end
    context 'テストが登録できないとき' do
      it '学年が未選択では登録できない' do
        @exam.grade_id = 0
        @exam.valid?
        expect(@exam.errors.full_messages).to include("Grade can't be blank")
      end
      it 'テストが未選択では登録できない' do
        @exam.exam_name_id = 0
        @exam.valid?
        expect(@exam.errors.full_messages).to include("Exam name can't be blank")
      end
      it '国語が101点以上だと登録できない' do
        @exam.japanese_score = 101
        @exam.valid?
        expect(@exam.errors.full_messages).to include('Japanese score は0以上100以下の半角数値で入力してください')
      end
      it '国語は半角数値でないと登録できない' do
        @exam.japanese_score = '１００'
        @exam.valid?
        expect(@exam.errors.full_messages).to include('Japanese score は0以上100以下の半角数値で入力してください')
      end
      it '国語(平均点)が101点以上だと登録できない' do
        @exam.japanese_average_score = 101
        @exam.valid?
        expect(@exam.errors.full_messages).to include('Japanese average score は0以上100以下の半角数値で入力してください')
      end
      it '国語(平均点)は半角数値でないと登録できない' do
        @exam.japanese_average_score = '１００'
        @exam.valid?
        expect(@exam.errors.full_messages).to include('Japanese average score は0以上100以下の半角数値で入力してください')
      end
      it '数学が101点以上だと登録できない' do
        @exam.mathematics_score = 101
        @exam.valid?
        expect(@exam.errors.full_messages).to include('Mathematics score は0以上100以下の半角数値で入力してください')
      end
      it '数学は半角数値でないと登録できない' do
        @exam.mathematics_score = '１００'
        @exam.valid?
        expect(@exam.errors.full_messages).to include('Mathematics score は0以上100以下の半角数値で入力してください')
      end
      it '数学(平均点)が101点以上だと登録できない' do
        @exam.mathematics_average_score = 101
        @exam.valid?
        expect(@exam.errors.full_messages).to include('Mathematics average score は0以上100以下の半角数値で入力してください')
      end
      it '数学(平均点)は半角数値でないと登録できない' do
        @exam.mathematics_average_score = '１００'
        @exam.valid?
        expect(@exam.errors.full_messages).to include('Mathematics average score は0以上100以下の半角数値で入力してください')
      end
      it '英語が101点以上だと登録できない' do
        @exam.english_score = 101
        @exam.valid?
        expect(@exam.errors.full_messages).to include('English score は0以上100以下の半角数値で入力してください')
      end
      it '英語は半角数値でないと登録できない' do
        @exam.english_score = '１００'
        @exam.valid?
        expect(@exam.errors.full_messages).to include('English score は0以上100以下の半角数値で入力してください')
      end
      it '英語(平均点)が101点以上だと登録できない' do
        @exam.english_average_score = 101
        @exam.valid?
        expect(@exam.errors.full_messages).to include('English average score は0以上100以下の半角数値で入力してください')
      end
      it '英語(平均点)は半角数値でないと登録できない' do
        @exam.english_average_score = '１００'
        @exam.valid?
        expect(@exam.errors.full_messages).to include('English average score は0以上100以下の半角数値で入力してください')
      end
      it '社会が101点以上だと登録できない' do
        @exam.sosial_score = 101
        @exam.valid?
        expect(@exam.errors.full_messages).to include('Sosial score は0以上100以下の半角数値で入力してください')
      end
      it '社会は半角数値でないと登録できない' do
        @exam.sosial_score = '１００'
        @exam.valid?
        expect(@exam.errors.full_messages).to include('Sosial score は0以上100以下の半角数値で入力してください')
      end
      it '社会(平均点)が101点以上だと登録できない' do
        @exam.sosial_average_score = 101
        @exam.valid?
        expect(@exam.errors.full_messages).to include('Sosial average score は0以上100以下の半角数値で入力してください')
      end
      it '社会(平均点)は半角数値でないと登録できない' do
        @exam.sosial_average_score = '１００'
        @exam.valid?
        expect(@exam.errors.full_messages).to include('Sosial average score は0以上100以下の半角数値で入力してください')
      end
      it '理科が101点以上だと登録できない' do
        @exam.science_score = 101
        @exam.valid?
        expect(@exam.errors.full_messages).to include('Science score は0以上100以下の半角数値で入力してください')
      end
      it '理科は半角数値でないと登録できない' do
        @exam.science_score = '１００'
        @exam.valid?
        expect(@exam.errors.full_messages).to include('Science score は0以上100以下の半角数値で入力してください')
      end
      it '理科(平均点)が101点以上だと登録できない' do
        @exam.science_average_score = 101
        @exam.valid?
        expect(@exam.errors.full_messages).to include('Science average score は0以上100以下の半角数値で入力してください')
      end
      it '理科(平均点)は半角数値でないと登録できない' do
        @exam.science_average_score = '１００'
        @exam.valid?
        expect(@exam.errors.full_messages).to include('Science average score は0以上100以下の半角数値で入力してください')
      end
      it '生徒が紐付いていなければ投稿できない' do
        @exam.student = nil
        @exam.valid?
        expect(@exam.errors.full_messages).to include('Student must exist')
      end
    end
  end
end
