class SuggestionsController < ApplicationController

  def index
    @suggestions = Suggestion.all
  end

  def new
    @suggestion = Suggestion.new
  end

  def edit
    @suggestion = Suggestion.find(params[:id])
  end

  def update
    @suggestion = Suggestion.find(params[:id])

    if @suggestion.update(suggestion_params)
      redirect_to suggestions_path
    else
      render 'edit'
    end
  end

  def create
    @suggestion = Suggestion.new(suggestion_params)
    @suggestion.save!

    redirect_to suggestions_path
  end

  def destroy
    @suggestion = Suggestion.find(params[:id])
    @suggestion.destroy

    redirec_to suggestions_path
  end

  private

  def suggestion_params
    params.require(:suggestion).permit(:suggestion_type, :reference, :is_valid, :points, :start_time, :end_time)
  end
end
