class AccessKindsController < ApplicationController
  before_action :set_access_kind, only: [:show, :edit, :update, :destroy]

  # GET /access_kinds
  # GET /access_kinds.json
  def index
    @access_kinds = AccessKind.all
  end

  # GET /access_kinds/1
  # GET /access_kinds/1.json
  def show
  end

  # GET /access_kinds/new
  def new
    @access_kind = AccessKind.new
  end

  # GET /access_kinds/1/edit
  def edit
  end

  # POST /access_kinds
  # POST /access_kinds.json
  def create
    @access_kind = AccessKind.new(access_kind_params)

    respond_to do |format|
      if @access_kind.save
        format.html { redirect_to @access_kind, notice: 'Access kind was successfully created.' }
        format.json { render :show, status: :created, location: @access_kind }
      else
        format.html { render :new }
        format.json { render json: @access_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /access_kinds/1
  # PATCH/PUT /access_kinds/1.json
  def update
    respond_to do |format|
      if @access_kind.update(access_kind_params)
        format.html { redirect_to @access_kind, notice: 'Access kind was successfully updated.' }
        format.json { render :show, status: :ok, location: @access_kind }
      else
        format.html { render :edit }
        format.json { render json: @access_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /access_kinds/1
  # DELETE /access_kinds/1.json
  def destroy
    @access_kind.destroy
    respond_to do |format|
      format.html { redirect_to access_kinds_url, notice: 'Access kind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_access_kind
      @access_kind = AccessKind.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def access_kind_params
      params.require(:access_kind).permit(:description)
    end
end
