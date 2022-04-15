class BasicVerificationsController < ApplicationController
  before_action :set_merchant
  before_action :set_basic_verification, only: %i[ show edit update destroy ]

  # GET /basic_verifications or /basic_verifications.json
  def index
    @basic_verifications = BasicVerification.all
  end

  # GET /basic_verifications/1 or /basic_verifications/1.json
  def show
  end

  # GET /basic_verifications/new
  def new
    @basic_verification = BasicVerification.new
  end

  # GET /basic_verifications/1/edit
  def edit
  end

  # POST /basic_verifications or /basic_verifications.json
  def create
    @basic_verification = @merchant.basic_verifications.create!(basic_verification_params)
    respond_to do |format|
      if @basic_verification.save
        format.html { redirect_to new_merchant_identity_verification_path(@merchant) }
        
      else
        format.html { render :new, status: :unprocessable_entity }
        flash.now[:notice] = "Works!"
      end
    end
  end

  # PATCH/PUT /basic_verifications/1 or /basic_verifications/1.json
  def update
    respond_to do |format|
      if @basic_verification.update(basic_verification_params)
        format.html { redirect_to basic_verification_url(@basic_verification), notice: "Basic verification was successfully updated." }
        format.json { render :show, status: :ok, location: @basic_verification }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @basic_verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basic_verifications/1 or /basic_verifications/1.json
  def destroy
    @basic_verification.destroy

    respond_to do |format|
      format.html { redirect_to basic_verifications_url, notice: "Basic verification was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    #set Merchant
    def set_merchant
      @merchant = Merchant.find(params[:merchant_id])
    end
    

    # Use callbacks to share common setup or constraints between actions.
    def set_basic_verification
      @basic_verification = BasicVerification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def basic_verification_params
      params.require(:basic_verification).permit(:merchant_id, :address_1, :city, :state, :zip)
    end
end
