class ClassProposalsController < ApplicationController
  before_action :set_class_proposal, only: [:show, :edit, :update, :destroy]

  # GET /class_proposals
  # GET /class_proposals.json
  def index
    @class_proposals = ClassProposal.all
  end

  # GET /class_proposals/1
  # GET /class_proposals/1.json
  def show
  end

  # GET /class_proposals/new
  def new
    @class_proposal = ClassProposal.new
  end

  # GET /class_proposals/1/edit
  def edit
  end

  # POST /class_proposals
  # POST /class_proposals.json
  def create
    @class_proposal = ClassProposal.new(class_proposal_params)

    respond_to do |format|
      if @class_proposal.save
        format.html { redirect_to @class_proposal, notice: 'Class proposal was successfully created.' }
        format.json { render :show, status: :created, location: @class_proposal }
      else
        format.html { render :new }
        format.json { render json: @class_proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_proposals/1
  # PATCH/PUT /class_proposals/1.json
  def update
    respond_to do |format|
      if @class_proposal.update(class_proposal_params)
        format.html { redirect_to @class_proposal, notice: 'Class proposal was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_proposal }
      else
        format.html { render :edit }
        format.json { render json: @class_proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_proposals/1
  # DELETE /class_proposals/1.json
  def destroy
    @class_proposal.destroy
    respond_to do |format|
      format.html { redirect_to class_proposals_url, notice: 'Class proposal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_proposal
      @class_proposal = ClassProposal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_proposal_params
      params.require(:class_proposal).permit(:class_name, :description)
    end
end
