class EquipmentController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_equipment, only: [:show, :edit, :update, :destroy]
  
  # GET /equipment
  # GET /equipment.json
  def index
    @equipment = Equipment.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:per_page => 5, :page => params[:page])
    @categories = Category.all
    @sub_categories = SubCategory.all
  end

  # GET /equipment/1
  # GET /equipment/1.json
  def show
  end
  
  # GET equipment/1/categories
  def modify_categories
    @equipment = Equipment.find(params[:id])
    respond_to do |format|               
      format.js
    end 
  end
  
  # GET equipment/update_menu/1
  def update_menu
    @category = Category.find(params[:id])
    @sub_categories = Category.find(params[:id]).sub_categories
    render :partial => 'menu_sub_categories', locals: { category: @category, sub_categories: @sub_categories }
  end
  
  # GET /equipment/new
  def new
    @equipment = Equipment.new
  end

  # GET /equipment/1/edit
  def edit
  end
  
  # POST /equipment
  # POST /equipment.json
  def create
    @equipment = Equipment.new(equipment_params)

    respond_to do |format|
      if @equipment.save
        format.html { redirect_to @equipment, notice: 'Equipment was successfully created.' }
        format.json { render :show, status: :created, location: @equipment }
        format.js
      else
        format.html { render :new }
        format.json { render json: @equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment/1
  # PATCH/PUT /equipment/1.json
  def update
   # params[:equipment][:link_ids] ||= []
   # params[:equipment][:category_ids] ||= []
   # params[:equipment][:sub_category_ids] ||= []
    respond_to do |format|
      if @equipment.update(equipment_params)
        format.html { redirect_to @equipment, notice: 'Equipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipment }
      else
        format.html { render :edit }
        format.json { render json: @equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment/1
  # DELETE /equipment/1.json
  def destroy
    @equipment.destroy
    respond_to do |format|
      format.html { redirect_to equipment_index_url, notice: 'Equipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment
      @equipment = Equipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipment_params
      params.require(:equipment).permit(:eq_name, :eq_description, :eq_number, {:category_ids => []}, {:sub_category_ids => []}, {:link_ids => []}, :search, :sort, :direction)
    end
  
    private
    def sort_column
      Equipment.column_names.include?(params[:sort]) ? params[:sort] : "eq_name"
    end
  
    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
  
end
