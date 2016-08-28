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

  end

  def create

  end

  def destroy
    @suggestion = Suggestion.find(params[:id])
    @suggestion.destroy

    redirec_to sugestions_path
  end

  private

  def suggestion_params
    
  end
end
