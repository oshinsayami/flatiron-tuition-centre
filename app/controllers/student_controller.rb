class StudentController < ApplicationController

    get '/students' do
        redirect_if_not_logged_in
        @students = Student.all
        erb :"students/index"
    end

    get '/students/new' do
        redirect_if_not_logged_in
        erb :"students/new"
    end

    get '/students/:id' do
        redirect_if_not_logged_in
        @student = Student.find(params["id"])
        erb :"students/show"
    end

    post '/students' do
        redirect_if_not_logged_in
        student= Student.new(params)
        student.save
        redirect '/students'
    end

    get '/students/:id/edit' do
        redirect_if_not_logged_in
        @student = Student.find(params["id"])
        erb :"students/edit"

    end

    patch '/students/:id' do
        @student = Student.find(params["id"])
        @student.update(params["student"])
        redirect "/students/#{@student.id}"


    end

    delete '/students/:id' do
        @student = Student.find(params["id"])
        @student.destroy
        redirect '/students'
    end

end