class Admin::PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /admin/pages
  def index
    @pages = Page.all
  end

  # GET /admin/pages/1
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
  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to [:admin, @page], notice: 'Page was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/pages/1
  def update
    if @page.update(page_params)
      redirect_to [:admin, @page], notice: 'Page was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/pages/1
  def destroy
    @page.destroy
    redirect_to admin_pages_url, notice: 'Page was successfully destroyed.'
  end

  private

  def set_page
    @page = Page.find(params[:id])
  end

  def page_params
    params.require(:page).permit(:title, :content, blocks_attributes: [:id, :content, :_destroy])
  end
end
