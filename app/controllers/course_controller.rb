class CourseController < ApplicationController

    get '/courses' do
        @courses = Course.all
        erb :"courses/index"
    end

    get '/courses/new' do
        erb :"courses/new"
    end

    get '/courses/:id' do
        @course = Course.find(params["id"])
        erb :"courses/show"
    end

    post '/courses' do
        course= Course.new(params)
        # binding.pry
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

    delete 'courses/:id' do
        @course = Course.find(params["id"])
        @course.destroy
        redirect '/courses'
    end

end