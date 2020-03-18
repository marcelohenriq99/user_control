class ProfileAccessesController < ApplicationController
  before_action :set_profile_access, only: [:show, :edit, :update, :destroy]

  # GET /profile_accesses
  # GET /profile_accesses.json
  def index
    @profile_accesses = ProfileAccess.all
  end

  # GET /profile_accesses/1
  # GET /profile_accesses/1.json
  def show
  end

  # GET /profile_accesses/new
  def new
    @profile_access = ProfileAccess.new
  end

  # GET /profile_accesses/1/edit
  def edit
  end

  # POST /profile_accesses
  # POST /profile_accesses.json
  def create
    @profile_access = ProfileAccess.new(profile_access_params)

    respond_to do |format|
      if @profile_access.save
        format.html { redirect_to @profile_access, notice: 'Profile access was successfully created.' }
        format.json { render :show, status: :created, location: @profile_access }
      else
        format.html { render :new }
        format.json { render json: @profile_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profile_accesses/1
  # PATCH/PUT /profile_accesses/1.json
  def update
    respond_to do |format|
      if @profile_access.update(profile_access_params)
        format.html { redirect_to @profile_access, notice: 'Profile access was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile_access }
      else
        format.html { render :edit }
        format.json { render json: @profile_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_accesses/1
  # DELETE /profile_accesses/1.json
  def destroy
    @profile_access.destroy
    respond_to do |format|
      format.html { redirect_to profile_accesses_url, notice: 'Profile access was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile_access
      @profile_access = ProfileAccess.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profile_access_params
      params.require(:profile_access).permit(:object_access, :access_kind_id, :user_profile_id)
    end
end
