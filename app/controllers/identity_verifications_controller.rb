class IdentityVerificationsController < ApplicationController
  before_action :set_merchant
  before_action :set_identity_verification, only: %i[ show edit update destroy ]

  # GET /identity_verifications or /identity_verifications.json
  def index
    @identity_verifications = IdentityVerification.all
  end

  # GET /identity_verifications/1 or /identity_verifications/1.json
  def show
  end

  # GET /identity_verifications/new
  def new
    @identity_verification = IdentityVerification.new
  end

  # GET /identity_verifications/1/edit
  def edit
  end

  # POST /identity_verifications or /identity_verifications.json
  def create
    @identity_verification = @merchant.identity_verifications.create!(identity_verification_params)

    respond_to do |format|
      if @identity_verification.save
        format.html { redirect_to new_merchant_business_verification_path(@merchant) }
        format.json { render :show, status: :created, location: @identity_verification }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @identity_verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /identity_verifications/1 or /identity_verifications/1.json
  def update
    respond_to do |format|
      if @identity_verification.update(identity_verification_params)
        format.html { redirect_to identity_verification_url(@identity_verification), notice: "Identity verification was successfully updated." }
        format.json { render :show, status: :ok, location: @identity_verification }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @identity_verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /identity_verifications/1 or /identity_verifications/1.json
  def destroy
    @identity_verification.destroy

    respond_to do |format|
      format.html { redirect_to identity_verifications_url, notice: "Identity verification was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_merchant
      @merchant = Merchant.find(params[:merchant_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_identity_verification
      @identity_verification = IdentityVerification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def identity_verification_params
      params.require(:identity_verification).permit(:ssn, :dl_back, :dl_front, :picture)
    end
end
