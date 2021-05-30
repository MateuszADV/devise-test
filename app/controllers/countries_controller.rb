class CountriesController < ApplicationController
  before_action :set_country, only: %i[ show edit update destroy ]

  # GET /countries or /countries.json
  def index
    # @countries = Country.all
    @countries = Country.page(params[:page]).per(10)
    puts "############### KAMINARI #####################"
    puts Country.count                     #=> 1000
    puts Country.page(1).limit_value       #=> 20
    puts Country.page(1).total_pages       #=> 50
    puts Country.page(1).current_page      #=> 1
    puts Country.page(1).next_page         #=> 2
    puts Country.page(2).prev_page         #=> 1
    puts Country.page(1).first_page?       #=> true
    puts Country.page(50).last_page?       #=> true
    puts Country.page(100).out_of_range?   #=> true
    puts "############### END #########################"
  end

  def pagin
    @countriest = Country.all
    @countries = Country.page(params[:page]).per(25)
  end

  # GET /countries/1 or /countries/1.json
  def show
  end

  # GET /countries/new
  def new
    @country = Country.new
  end

  # GET /countries/1/edit
  def edit
  end

  # POST /countries or /countries.json
  def create
    @country = Country.new(country_params)

    respond_to do |format|
      if @country.save
        format.html { redirect_to @country, notice: "Country was successfully created." }
        format.json { render :show, status: :created, location: @country }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countries/1 or /countries/1.json
  def update
    respond_to do |format|
      if @country.update(country_params)
        format.html { redirect_to @country, notice: "Country was successfully updated." }
        format.json { render :show, status: :ok, location: @country }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countries/1 or /countries/1.json
  def destroy
    @country.destroy
    respond_to do |format|
      format.html { redirect_to countries_url, notice: "Country was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country
      @country = Country.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def country_params
      params.require(:country).permit(:continent, :country_en, :country_pl, :capital_city, :alfa_2, :alfa_3, :numeric_code, :iso_code)
    end
end
