class Student < ActiveRecord::Base
  has_many :grades
  has_many :parents
  belongs_to :teacher, foreign_key: "teacher_id"
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :teacher_id, presence: true
end
