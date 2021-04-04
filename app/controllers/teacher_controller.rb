class TeacherController < ApplicationController

    get '/teachers' do
        redirect_if_not_logged_in
        # binding.pry
        @teachers = Teacher.all
        erb :"teachers/index"
    end

    get '/teachers/new' do
        erb :"teachers/new"
    end

    get '/teachers/:id' do
        redirect_if_not_logged_in
        set_teacher
        erb :"teachers/show"
    end

    post '/teachers' do
        redirect_if_not_logged_in
        
        teacher= current_user.teachers.new(params)
        if teacher.valid?
            teacher.save
            redirect '/teachers'
        else
            @message= teacher.errors.full_messages.to_sentence
            erb  :"teachers/new"
        end
    end

    get '/teachers/:id/edit' do
        set_teacher
        redirect_if_not_authorized(@teacher)
        erb :"teachers/edit"

    end

    patch '/teachers/:id' do
        set_teacher
        redirect_if_not_authorized(@teacher)
        @teacher.update(params["teacher"])
        redirect "/teachers/#{@teacher.id}"
    end

    delete '/teachers/:id' do
        redirect_if_not_authorized(@teacher)
        @teacher.destroy
        redirect '/teachers'
    end
    
    private
    
    def set_teacher
        @teacher = Teacher.find(params["id"])
    end

end