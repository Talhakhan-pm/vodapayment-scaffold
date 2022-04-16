class BusinessVerificationsController < ApplicationController
  before_action :set_merchant
  before_action :set_business_verification, only: %i[ show edit update destroy ]

  # GET /business_verifications or /business_verifications.json
  def index
    @business_verifications = BusinessVerification.all
  end

  # GET /business_verifications/1 or /business_verifications/1.json
  def show
  end

  # GET /business_verifications/new
  def new
    @business_verification = BusinessVerification.new
  end

  # GET /business_verifications/1/edit
  def edit
  end

  # POST /business_verifications or /business_verifications.json
  def create
    @business_verification = @merchant.business_verifications.new(business_verification_params)

    respond_to do |format|
      if @business_verification.save
        format.html { redirect_to funding_path(:new) }
        format.json { render :show, status: :created, location: @business_verification }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @business_verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_verifications/1 or /business_verifications/1.json
  def update
    respond_to do |format|
      if @business_verification.update(business_verification_params)
        format.html { redirect_to static_pages_about_path, notice: "Business verification was successfully updated." }
        format.json { render :show, status: :ok, location: @business_verification }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @business_verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_verifications/1 or /business_verifications/1.json
  def destroy
    @business_verification.destroy

    respond_to do |format|
      format.html { redirect_to business_verifications_url, notice: "Business verification was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def set_merchant
      @merchant = Merchant.find(params[:merchant_id])
    end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_business_verification
      @business_verification = BusinessVerification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def business_verification_params
      params.require(:business_verification).permit(:business_name, :ein, :bank_log, :phone, :address, :business_doc_1, :business_doc_2)
    end
end
