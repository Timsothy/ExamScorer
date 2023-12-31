class Grade < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '中学1年' },
    { id: 2, name: '中学2年' },
    { id: 3, name: '中学3年' },
    { id: 4, name: '高校1年' },
    { id: 5, name: '高校2年' },
    { id: 6, name: '高校3年' }
  ]

  include ActiveHash::Associations
  has_many :exams
end
