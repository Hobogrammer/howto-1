class StepsController < ApplicationController
  before_action :set_how_to
  #before_action :set_step, only: [:show, :edit, :update, :destroy]

  # GET /steps
  # GET /steps.json
 def index
    @steps = @how_to.steps
  end

  # GET /steps/1
  # GET /steps/1.json
  def show
    @step = @how_to.steps.find(params[:id])

    respond_to do |format|
      format.html
      format.xml { render :xml => @step }
    end
  end

  # GET /steps/new
  def new
    @step = Step.new
  end

  # GET /steps/1/edit
  def edit
    @step = @how_to.steps.find(params[:id])
  end

  # POST /steps
  # POST /steps.json
  def create
    @step = @how_to.steps.new(step_params)

    respond_to do |format|
      if @step.save
        format.html { redirect_to([@step.how_to, @step], notice: 'Step was successfully created.') }
        format.json { render action: 'show', status: :created, location: @step }
      else
        format.html { render action: 'new' }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /steps/1
  # PATCH/PUT /steps/1.json
  def update
    @step = @how_to.step.find(params[:id])
    respond_to do |format|
      if @step.update(step_params)
        format.html { redirect_to @step, notice: 'Step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steps/1
  # DELETE /steps/1.json
  def destroy
    @step = @how_to.steps.find(params[:id])
    @step.destroy
    respond_to do |format|
      format.html { redirect_to how_to_steps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_how_to
      @how_to = HowTo.find(params[:how_to_id])
    end

    def set_steps
      @steps = @how_to.steps.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_params
      params.require(:step).permit(:instructions)
    end
end
