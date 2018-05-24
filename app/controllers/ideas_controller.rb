# app/controllers/ideas_controller
class IdeasController < ApplicationController
  before_action :set_idea, only: %i[show edit update destroy]

  def index
    @ideas = Idea.all
  end

  def show; end

  def new
    @idea = Idea.new
  end

  def edit; end

  def create
    @idea = Idea.new(idea_params)

    if @idea.save
      redirect_to idea_path(@idea), notice: 'Idea was successfully created.'
    else
      render :new
    end
  end

  def update
    if @idea.update(idea_params)
      redirect_to idea_path(@idea), notice: 'Idea was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @idea.destroy
    redirect_to ideas_url, notice: 'Idea was successfully destroyed.'
  end

  private

  def set_idea
    @idea = Idea.find(params[:id])
  end

  def idea_params
    params.require(:idea).permit(:title, :description)
  end
end
