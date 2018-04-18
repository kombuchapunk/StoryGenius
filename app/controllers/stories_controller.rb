require 'faker'

class StoriesController < ApplicationController
  def index
    @stories = Story.all
    render :index
  end

  def show

    @story = Story.find(params[:id])
    render :show
  end

  def new
    @story = Story.new
    @random_word = Faker::Hipster.word
    render :new
  end
end
