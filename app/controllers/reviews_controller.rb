class ReviewsController < ApplicationController
  def create
    # Review.create(reviewed_id: params[:reviewed_id], reviewer_id: params[:reviewer_id], content: params[:content])
    
    @review=Review.new
    @review.reviewed_id=params[:reviewed_id]
    @review.reviewer_id=params[:reviewing_id]
    @review.content = params[:content]
    @review.save
<<<<<<< HEAD
    
=======
>>>>>>> 5a8c5f8bea55d22fbc4f70400156d8123d54c966

    redirect_to :back
  end

  def destroy
    Review.find(params[:id]).destroy
    redirect_to :back
  end
end
