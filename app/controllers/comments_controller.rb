class CommentsController < ApplicationController

  def create
    @sentence = Sentence.find(params[:sentence_id])
    @comment = @sentence.comments.new(comment_params)
    @sentence.save
    redirect_to story_sentence_path(@sentence.story, @sentence)
  end

  def show
    @story = Story.find(params[:story_id])
    @sentences = @story.sentences.all
    @sentence = @story.sentences.new
    @comments = @sentence.comments
    @new_comment = Comment.new
  end

  private
  def comment_params
    params.require(:comment).permit(:words, :user_id)
  end

end
