class FundingsController < ApplicationController
  before_action :set_funding, only: %i[ show edit update destroy ]

  # GET /fundings or /fundings.json
  def index
    @fundings = Funding.all
  end

  # GET /fundings/1 or /fundings/1.json
  def show
  end

  # GET /fundings/new
  def new
    @funding = Funding.new
  end

  # GET /fundings/1/edit
  def edit
  end

  # POST /fundings or /fundings.json
  def create
    @funding = Funding.new(funding_params)

    respond_to do |format|
      if @funding.save
        format.html { redirect_to static_pages_about_path, notice: "Your Merchant application has been submitted. Please wait while we review this information" }
        format.json { render :show, status: :created, location: @funding }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @funding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fundings/1 or /fundings/1.json
  def update
    respond_to do |format|
      if @funding.update(funding_params)
        format.html { redirect_to funding_url(@funding), notice: "Funding was successfully updated." }
        format.json { render :show, status: :ok, location: @funding }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @funding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fundings/1 or /fundings/1.json
  def destroy
    @funding.destroy

    respond_to do |format|
      format.html { redirect_to fundings_url, notice: "Funding was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funding
      @funding = Funding.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def funding_params
      params.require(:funding).permit(:title, :checking_num, :routing_num, :image)
    end
end
