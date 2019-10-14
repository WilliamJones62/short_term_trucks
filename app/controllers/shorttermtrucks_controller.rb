class ShorttermtrucksController < ApplicationController
  before_action :set_user
  before_action :set_shorttermtruck, only: [:show, :edit, :update, :destroy]

  # GET /shorttermtrucks
  def index
    @shorttermtrucks = Shorttermtruck.all
  end

  # GET /shorttermtrucks/1
  def show
  end

  # GET /shorttermtrucks/new
  def new
    @shorttermtruck = Shorttermtruck.new
    @new = true
  end

  # GET /shorttermtrucks/1/edit
  def edit
  end

  # POST /shorttermtrucks
  def create
    @shorttermtruck = Shorttermtruck.new(shorttermtruck_params)

    respond_to do |format|
      if @shorttermtruck.save
        format.html { redirect_to @shorttermtruck, notice: 'Record was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /shorttermtrucks/1
  def update
    respond_to do |format|
      if @shorttermtruck.update(shorttermtruck_params)
        format.html { redirect_to @shorttermtruck, notice: 'Record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /shorttermtrucks/1
  def destroy
    @shorttermtruck.destroy
    respond_to do |format|
      format.html { redirect_to shorttermtrucks_url, notice: 'Record was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shorttermtruck
      @shorttermtruck = Shorttermtruck.find(params[:id])
    end

    def set_user
      @user = current_user.email.upcase
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shorttermtruck_params
      params.require(:shorttermtruck).permit(:truck, :ezpass, :wexcard, :given, :returned, :created_by)
    end
end
