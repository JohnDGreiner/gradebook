class SessionsController < ApplicationController
  def login
    if request.post?
      if params[:role] == "teacher"
        teacher = Teacher.find_by_email(params[:email])
        if teacher && teacher.authenticate(params[:password])
          session[:user_id] = teacher.id
          session[:role] = "teacher"
          redirect_to teachers_path, notice: "Logged in."
        else
          flash.now[:notice] = "Incorrect Email or Password"
        end
      elsif params[:role] == "parent"
        parent = Parent.find_by_email(params[:email])
        if parent && parent.authenticate(params[:password])
          session[:user_id] = parent.id
          session[:role] = "parent"
          redirect_to parents_path, notice: "Logged in."
        else
          flash.now[:notice] = "Incorrect Email or Password"
        end
      elsif params[:role] == "student"
        student = Student.find_by_email(params[:email])
        if student && student.authenticate(params[:password])
          session[:user_id] = student.id
          session[:role] = "student"
          redirect_to students_path, notice: "Logged in."
        else
          flash.now[:notice] = "Incorrect Email or Password"
        end
      end
    end
  end

  def logout
    session[:user_id] = nil
    session[:role_type] = nil
    redirect_to sessions_login_path, notice: "Successfully logged out."
  end
end
