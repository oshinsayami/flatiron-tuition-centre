class CourseController < ApplicationController

    get '/courses' do
        erb :"courses/index"
    end

    get '/courses/:id' do
    end

    get 'courses/new' do
    end

    post '/courses' do
    end

    get '/courses/:id/edit' do
    end

    patch '/courses/:id' do
    end

    delete 'courses/:id' do
    end

end