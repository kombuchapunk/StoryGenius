require 'faker'
require 'image_searcher'

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
    random_word = Faker::Hipster.unique.word
    random_img = ImageSearcher::Client.new.search(query: random_word, count: 1)
    @random_img = random_img[0]["url"]
    render :new
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      redirect_to  stories_path
    else
      render :new
    end
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to stories_path
  end

  private
  def story_params
    params.require(:story).permit(:name, :imgLink)
  end

end
