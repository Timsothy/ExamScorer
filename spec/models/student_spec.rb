require 'rails_helper'

RSpec.describe Student, type: :model do
  before do
    @student = FactoryBot.build(:student)
  end

  describe '生徒新規登録' do
    context '新規登録できるとき' do
      it '9つの入力項目が存在すれば登録できる' do
        expect(@student).to be_valid
      end
    end
    context '新規登録できないとき' do
      it 'emailが空では登録できない' do
        @student.email = ''
        @student.valid?
        expect(@student.errors.full_messages).to include("Email can't be blank")
      end
      it '重複したemailが存在する場合は登録できない' do
        @student.save
        another_student = FactoryBot.build(:student)
        another_student.email = @student.email
        another_student.valid?
        expect(another_student.errors.full_messages).to include('Email has already been taken')
      end
      it 'emailは@を含まないと登録できない' do
        @student.email = 'testmail'
        @student.valid?
        expect(@student.errors.full_messages).to include('Email is invalid')
      end
      it 'passwordが空では登録できない' do
        @student.password = ''
        @student.valid?
        expect(@student.errors.full_messages).to include("Password can't be blank")
      end
      it 'passwordが5文字以下では登録できない' do
        @student.password = '12345'
        @student.password_confirmation = '12345'
        @student.valid?
        expect(@student.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end
      it 'passwordが英字のみでは登録できない' do
        @student.password = 'abcdef'
        @student.password_confirmation = 'abcdef'
        @student.valid?
        expect(@student.errors.full_messages).to include('Password には英字と数字の両方を含めて設定してください')
      end
      it 'passwordが数字のみでは登録できない' do
        @student.password = '123456'
        @student.password_confirmation = '123456'
        @student.valid?
        expect(@student.errors.full_messages).to include('Password には英字と数字の両方を含めて設定してください')
      end
      it 'passwordが全角文字を含んでいると登録できない' do
        @student.password = 'abc１２３'
        @student.password_confirmation = 'abc１２３'
        @student.valid?
        expect(@student.errors.full_messages).to include('Password には英字と数字の両方を含めて設定してください')
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @student.password = '123456'
        @student.password_confirmation = '1234567'
        @student.valid?
        expect(@student.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it '性別が未選択では出品できない' do
        @student.gender_id = 0
        @student.valid?
        expect(@student.errors.full_messages).to include("Gender can't be blank")
      end
      it '名字が空では登録できない' do
        @student.last_name = ''
        @student.valid?
        expect(@student.errors.full_messages).to include("Last name can't be blank")
      end
      it '名前が空では登録できない' do
        @student.first_name = ''
        @student.valid?
        expect(@student.errors.full_messages).to include("First name can't be blank")
      end
      it '名字は全角でないと登録できない' do
        @student.last_name = 'Yamada'
        @student.valid?
        expect(@student.errors.full_messages).to include('Last name 全角文字を使用してください')
      end
      it '名前は全角でないと登録できない' do
        @student.first_name = 'Taro'
        @student.valid?
        expect(@student.errors.full_messages).to include('First name 全角文字を使用してください')
      end
      it '名字カナが空では登録できない' do
        @student.last_name_kana = ''
        @student.valid?
        expect(@student.errors.full_messages).to include("Last name kana can't be blank")
      end
      it '名前カナが空では登録できない' do
        @student.first_name_kana = ''
        @student.valid?
        expect(@student.errors.full_messages).to include("First name kana can't be blank")
      end
      it '名字カナは全角でないと登録できない' do
        @student.last_name_kana = 'ﾔﾏﾀﾞ'
        @student.valid?
        expect(@student.errors.full_messages).to include('Last name kana 全角カナを使用してください')
      end
      it '名前カナは全角でないと登録できない' do
        @student.first_name_kana = 'ﾀﾛｳ'
        @student.valid?
        expect(@student.errors.full_messages).to include('First name kana 全角カナを使用してください')
      end
      it '学校名が空では登録できない' do
        @student.school = ''
        @student.valid?
        expect(@student.errors.full_messages).to include("School can't be blank")
      end
    end
  end
end