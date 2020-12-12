class CourseController < ApplicationController

    get '/courses' do
        @courses = Course.all
        erb :"courses/index"
    end

    get '/courses/new' do
        erb :"courses/new"
    end

    get '/courses/:id' do
        redirect_if_not_logged_in
        @course = Course.find(params["id"])
        erb :"courses/show"
    end

    post '/courses' do
        redirect_if_not_logged_in
        course= Course.new(params)
        course.save
        redirect '/courses'
    end

    get '/courses/:id/edit' do
        @course = Course.find(params["id"])
        erb :"courses/edit"

    end

    patch '/courses/:id' do
        @course = Course.find(params["id"])
        @course.update(params["course"])
        redirect "/courses/#{@course.id}"


    end

    delete '/courses/:id' do
        @course = Course.find(params["id"])
        @course.destroy
        redirect '/courses'
    end

end