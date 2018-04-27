class SentencesController < ApplicationController

  def create
    @story = Story.find(params[:story_id])
    binding.pry
    @sentence = @story.sentences.new(sentence_params)
    @sentence.save
    redirect_to story_path(@story)
  end

  def show
    @story = Story.find(params[:story_id])
    @sentence = Sentence.find(params[:id])
    @sentences = @story.sentences.all
    @new_sentence = @story.sentences.new
    @comments = @sentence.comments
    @new_comment = Comment.new
  end

  private
  def sentence_params
    params.require(:sentence).permit(:words, :user_id)
  end

end
