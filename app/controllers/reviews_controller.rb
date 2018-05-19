class ReviewsController < ApplicationController
  def create
    # Review.create(reviewed_id: params[:reviewed_id], reviewer_id: params[:reviewer_id], content: params[:content])
    
    @review=Review.new
    puts "디버깅::#{params[:reviewed_id]}"
    @review.reviewed_id=params[:reviewed_id]
    puts "디버깅:::#{@review.reviewed_id}"
    puts "디버깅:::#{params[:reviewer_id]}"
    @review.reviewer_id=params[:reviewer_id]
    puts "디버깅:::#{@review.reviewer_id}"
    puts "디버깅:::#{params[:content]}"
    @review.content = params[:content]
    puts "디버깅:::#{@review.content}"
    @review.save
    puts "디버깅:::#{@review}"
    puts "디버깅:::#{Review.all}"

    redirect_to :back
  end

  def destroy
    Review.find(params[:id]).destroy
    redirect_to :back
  end
end
