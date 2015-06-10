class Parent < ActiveRecord::Base
  belongs_to :student, foreign_key: "student_id"

  validates :email, presence: true, uniqueness: true
  validates :student_id, presence: true
end
