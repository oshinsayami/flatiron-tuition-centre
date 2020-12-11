class StudentController < ApplicationController

    get '/students' do
        @students = Student.all
        erb :"students/index"
    end

    get '/students/new' do
        erb :"students/new"
    end

    get '/students/:id' do
        @student = Student.find(params["id"])
        erb :"students/show"
    end

    post '/students' do
        student= Student.new(params)
        # binding.pry
        student.save
        redirect '/students'
    end

    get '/students/:id/edit' do
        @student = Student.find(params["id"])
        erb :"students/edit"

    end

    patch '/students/:id' do
        @student = Student.find(params["id"])
        @student.update(params["student"])
        redirect "/students/#{@student.id}"


    end

    delete 'student/:id' do
        @student = Student.find(params["id"])
        @student.destroy
        redirect '/students'
    end

end