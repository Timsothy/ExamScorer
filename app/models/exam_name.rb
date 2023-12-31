class ExamName < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '1学期中間' },
    { id: 2, name: '1学期期末' },
    { id: 3, name: '2学期中間' },
    { id: 4, name: '2学期期末' },
    { id: 5, name: '学年末' }
  ]

  include ActiveHash::Associations
  has_many :exams
end
