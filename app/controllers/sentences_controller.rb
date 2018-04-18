class SentencesController < ApplicationController

  def create
    @story = Story.find(params[:story_id])
    user = User.where( :username => "Nicko")
    @user_id = user[0].id
    @sentence = @story.sentences.new(sentence_params)
    @sentence.save
    redirect_to story_path(@story)
  end

  private
  def sentence_params
    params.require(:sentence).permit(:words, :user_id)
  end

end
