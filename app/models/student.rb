class Student < ActiveRecord::Base
  has_many :grades
  has_many :parents
  belongs_to :teacher, foreign_key: "teacher_id"

  validates :email, presence: true, uniqueness: true
  validates :teacher_id, presence: true
end
