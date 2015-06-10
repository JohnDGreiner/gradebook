class Grade < ActiveRecord::Base
  belongs_to :student, foreign_key: "student_id"

  validates :student_id, presence:true
end
