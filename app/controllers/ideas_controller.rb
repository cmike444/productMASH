class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :edit, :update, :destroy]
  layout 'dashboard'
  # GET /ideas
  # GET /ideas.json
  def index
    @user = User.find(params[:user_id])
    @projects = @user.projects
    @ideas = @user.projects.ideas
  end

  # GET /ideas/1
  # GET /ideas/1.json
  def show
    
  end

  # GET /ideas/new
  def new
    @projects = Project.where(:user_id => current_user.id).order('created_at desc')
    @project = Project.find(params[:project_id])
    @idea = @project.ideas.build
  end

  # GET /ideas/1/edit
  def edit
  end

  # POST /ideas
  # POST /ideas.json
  def create
    @projects = Project.where(:user_id => current_user.id).order('created_at desc')
    @project = Project.find(params[:project_id]) 
    @idea = @project.ideas.build(idea_params)
    @idea.user_id = current_user.id

    respond_to do |format|
      if @idea.save
        format.html { redirect_to @idea, notice: 'Idea was successfully created.' }
        format.json { render action: 'show', status: :created, location: @idea }
      else
        format.html { render action: 'new' }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ideas/1
  # PATCH/PUT /ideas/1.json
  def update
    respond_to do |format|
      if @idea.update(idea_params)
        format.html { redirect_to @idea, notice: 'Idea was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideas/1
  # DELETE /ideas/1.json
  def destroy
    @idea.destroy
    respond_to do |format|
      format.html { redirect_to ideas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea
      @idea = Idea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idea_params
      params.require(:idea).permit(:project_id, :image, :name, :description)
    end
end
