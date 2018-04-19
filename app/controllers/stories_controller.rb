require 'urss'
require 'image_searcher'

class StoriesController < ApplicationController
  def index
    @stories = Story.all
    render :index
  end

  def show
    @story = Story.find(params[:id])
    @sentences = @story.sentences.all
    @new_sentence = @story.sentences.new
    render :show
  end

  def new
    @story = Story.new
    random_word = Faker::Hipster.unique.word
    rss = Urss.at("http://www.flickr.com/services/feeds/photos_public.gne?format=rss_200")
    @random_img = rss.entries.first.medias.first.content_url
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
