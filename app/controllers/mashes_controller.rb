class MashesController < ApplicationController
  before_action :set_mash, only: [:show, :edit, :update, :destroy]
  layout 'dashboard'

  # GET /mashes
  # GET /mashes.json
  def index
    @mashes = Mash.all
  end

  # GET /mashes/1
  # GET /mashes/1.json
  def show
  end

  # GET /mashes/new
  def new
    @mash = Mash.new
  end

  # GET /mashes/1/edit
  def edit
  end

  # POST /mashes
  # POST /mashes.json
  def create
    @mash = Mash.new(mash_params)
    @mash.user_id = current_user.id
     @mash.durability = 0 
     @mash.efficiency = 0 
     @mash.assembly = 0  
     @mash.proportion = 0
     @mash.scale = 0
     @mash.semantics = 0
     @mash.lifespan = 0
     @mash.recycle = 0
     @mash.process = 0
     @mash.learning_curve = 0
     @mash.barriers = 0
     @mash.safety = 0
     @mash.pleasure = 0
     @mash.technology = 0
     @mash.function = 0
     @mash.parts = 0
     @mash.service = 0
     @mash.access = 0
     @mash.precedent = 0
     @mash.appropriate = 0
     @mash.branding = 0
     @mash.graphics = 0
     @mash.total_mash = 0
     @mash.total_mechanics = 0
     @mash.total_aesthetics = 0
     @mash.total_sustainability = 0
     @mash.total_human_factors = 0

    respond_to do |format|
      if @mash.save
        @mash.name = @mash.idea_id.to_s.prepend('IDEA-') + @mash.id.to_s.prepend(' MASH #')
        @mash.save
        format.html { redirect_to @mash, notice: 'Mash was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mash }
      else
        format.html { render action: 'new' }
        format.json { render json: @mash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mashes/1
  # PATCH/PUT /mashes/1.json
  def update
    respond_to do |format|
      if @mash.update(mash_params)
        format.html { redirect_to @mash, notice: 'Mash was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mashes/1
  # DELETE /mashes/1.json
  def destroy
    @mash.destroy
    respond_to do |format|
      format.html { redirect_to mashes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mash
      @mash = Mash.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mash_params
      params.require(:mash).permit(:durability, :efficiency, :assembly, :proportion, :scale, :semantics, :lifespan, :recycle, :process, :learning_curve, :barriers, :safety, :pleasure, :name, :download_link, :link, :toal_mash)
    end
end
