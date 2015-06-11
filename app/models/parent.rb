class Parent < ActiveRecord::Base
  belongs_to :student, foreign_key: "student_id"
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :student_id, presence: true
end
