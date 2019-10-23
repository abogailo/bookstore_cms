class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
        #change to sorted after adding lamdas scope thing
      end
    
      def show
        @review = Review.find(params[:id])
      end
    
      def new
        @review = Review.new
      end
    
      def create
        @review = Review.new(review_params)
        if @review.save
          flash[:notice] = "review created successfully."
          redirect_to(reviews_path)
        else
          render('new')
        end
      end
    
      def edit
        @review = Review.find(params[:id])
      end
    
      def update
        @review = Review.find(params[:id])
        if @review.update_attributes(review_params)
          flash[:notice] = "review updated successfully."
          redirect_to(review_path(@review))
        else
          render('edit')
        end
      end
    
      def delete
        @review = Review.find(params[:id])
      end
    
      def destroy
        @review = Review.find(params[:id])
        @review.destroy
        flash[:notice] = "review destroyed successfully."
        redirect_to(reviews_path)
      end
    
      private
    
      def review_params
        params.require(:review).permit(
          :book_id, #can I use strong params for this
          :rating,
          :review)
      end
end
