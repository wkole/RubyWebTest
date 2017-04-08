class WikisController < ApplicationController
  before_action :set_wiki, only: [:show, :edit, :update, :destroy]

  # GET /wikis
  # GET /wikis.json
  def index
    # puts params[:user_id]
    if params[:user_id] == nil && params[:tag] == nil
      @wikis = Wiki.all
      # puts @wikis
      # @wikis = Wiki.find_by!(user_id: 'fuquan')
    elsif params[:user_id] != nil
      @wikis = Wiki.where(user_id: params[:user_id])
      # puts @wikis
    elsif params[:tag] != nil
             @wikis = Wiki.where(tag: params[:tag])
    end
    # if session[:user_id].present?
    #   @name = session[:user_id]
    # else
    #   flash[:notice] = 'please login first~'
    #   # render :file => ""
    # end
    # puts @wikis
  end

  # GET /wikis/1
  # GET /wikis/1.json
  def show
  end

  # GET /wikis/new
  def new
    @wiki = Wiki.new
  end

  # GET /wikis/1/edit
  def edit
    puts params[:id]
  end

  # POST /wikis
  # POST /wikis.json
  def create
    @wiki = Wiki.new(wiki_params)

    respond_to do |format|
      if @wiki.save
        format.html { redirect_to @wiki, notice: 'Wiki was successfully created.' }
        format.json { render :show, status: :created, location: @wiki }
      else
        format.html { render :new }
        format.json { render json: @wiki.errors, status: :unprocessable_entity }
      end
    end
  end

  def showTag
      @wiki = Wiki.find(params[:wiki_id])
      redirect_to action: 'index' ,:tag => @wiki[:tag]

  end
  def showUser
    @wiki = Wiki.find(params[:wiki_id])
    # @wikis= Wiki.find_by(user_id: @wiki[:user_id])
    redirect_to action: 'index' ,:user_id => @wiki[:user_id]

  end

  # PATCH/PUT /wikis/1
  # PATCH/PUT /wikis/1.json
  def update
    # @hh= wiki_params[:user_id]
    # @jj= session[:user_id]
    if session[:user_id].present? && session[:user_id] == wiki_params[:user_id]
      respond_to do |format|
        if @wiki.update(wiki_params)
          format.html { redirect_to @wiki, notice: 'wiki修改成功～' }
          format.json { render :show, status: :ok, location: @wiki }
        else
          format.html { render :edit }
          format.json { render json: @wiki.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to "/wikis#index", notice: '只有本人才能修改本人的wiki~' }
        # format.json { render json: @wiki.errors, status: :unprocessable_entity }
      end
    end

  end

  # DELETE /wikis/1
  # DELETE /wikis/1.json
  def destroy
    @wiki.destroy
    respond_to do |format|
      format.html { redirect_to wikis_url, notice: '本人的wiki已经被删除了一个～' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wiki
      @wiki = Wiki.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wiki_params
      params.require(:wiki).permit(:tag, :info, :title,:user_id)
      # params.require(:wiki).permit!
    end

end
