class TeacherController < ApplicationController

    get '/teachers' do
        @teachers = Teacher.all
        erb :"teachers/index"
    end

    get '/teachers/new' do
        erb :"teachers/new"
    end

    get '/teachers/:id' do
        @teacher = Teacher.find(params["id"])
        erb :"teachers/show"
    end

    post '/teachers' do
        teacher= Teacher.new(params)
        # binding.pry
        teacher.save
        redirect '/teachers'
    end

    get '/teachers/:id/edit' do
        @teacher = Teacher.find(params["id"])
        erb :"teachers/edit"

    end

    patch '/teachers/:id' do
        @teacher = Teacher.find(params["id"])
        @teacher.update(params["teacher"])
        redirect "/teachers/#{@teacher.id}"


    end

    delete 'teachers/:id' do
        @teacher = Teacher.find(params["id"])
        @teacher.destroy
        redirect '/teachers'
    end

end