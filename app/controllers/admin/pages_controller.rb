class Admin::PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  # GET /admin/pages
  # GET /admin/pages.json
  def index
    @pages = Page.all
  end

  # GET /admin/pages/1
  # GET /admin/pages/1.json
  def show
  end

  # GET /admin/pages/new
  def new
    @page = Page.new
  end

  # GET /admin/pages/1/edit
  def edit
  end

  # POST /admin/pages
  # POST /admin/pages.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to [:admin, @page], notice: 'Page was successfully created.' }
        format.json { render :show, status: :created, location: [:admin, @page] }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/pages/1
  # PATCH/PUT /admin/pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to [:admin, @page], notice: 'Page was successfully updated.' }
        format.json { render :show, status: :ok, location: [:admin, @page] }
      else
        format.html { render :edit }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/pages/1
  # DELETE /admin/pages/1.json
  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to admin_pages_url, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:title, :content)
    end
end
