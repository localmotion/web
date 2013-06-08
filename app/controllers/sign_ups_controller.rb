class SignUpsController < ApplicationController
  before_action :set_sign_up, only: [:show, :edit, :update, :destroy]

  # GET /sign_ups
  def index
    @sign_ups = SignUp.all
  end

  # GET /sign_ups/1
  def show
  end

  # GET /sign_ups/new
  def new
    @sign_up = SignUp.new
  end

  # GET /sign_ups/1/edit
  def edit
  end

  # POST /sign_ups
  def create
    @sign_up = SignUp.new(sign_up_params)

    if @sign_up.save
      redirect_to @sign_up, notice: 'Sign up was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /sign_ups/1
  def update
    if @sign_up.update(sign_up_params)
      redirect_to @sign_up, notice: 'Sign up was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /sign_ups/1
  def destroy
    @sign_up.destroy
    redirect_to sign_ups_url, notice: 'Sign up was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sign_up
      @sign_up = SignUp.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sign_up_params
      params.require(:sign_up).permit(:email)
    end
end
