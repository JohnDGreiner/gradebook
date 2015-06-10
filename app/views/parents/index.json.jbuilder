json.array!(@parents) do |parent|
  json.extract! parent, :id, :first_name, :last_name, :email, :student_id, :password_digest
  json.url parent_url(parent, format: :json)
end
