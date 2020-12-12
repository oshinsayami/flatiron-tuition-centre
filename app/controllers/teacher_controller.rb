class TeacherController < ApplicationController

    get '/teachers' do
        @teachers = Teacher.all
        erb :"teachers/index"
    end

    get '/teachers/new' do
        erb :"teachers/new"
    end

    get '/teachers/:id' do
        redirect_if_not_logged_in
        @teacher = Teacher.find(params["id"])
        erb :"teachers/show"
    end

    post '/teachers' do
        redirect_if_not_logged_in
        teacher= Teacher.new(params)
        teacher.user_id = session[:user_id]
        teacher.save
        redirect '/teachers'
    end

    get '/teachers/:id/edit' do
        @teacher = Teacher.find(params["id"])
        redirect_if_not_authorized
        erb :"teachers/edit"

    end

    patch '/teachers/:id' do
        @teacher = Teacher.find(params["id"])
        redirect_if_not_authorized
        @teacher.update(params["teacher"])
        redirect "/teachers/#{@teacher.id}"


    end

    delete '/teachers/:id' do
        @teacher = Teacher.find(params["id"])
        redirect_if_not_authorized
        @teacher.destroy
        redirect '/teachers'
    end

    private

    def redirect_if_not_authorized
        if @teacher.user != current_user
            redirect '/teachers'
        end
    end

end