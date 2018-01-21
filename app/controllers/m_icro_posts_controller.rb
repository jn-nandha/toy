class MIcroPostsController < ApplicationController
  before_action :set_m_icro_post, only: [:show, :edit, :update, :destroy]

  # GET /m_icro_posts
  # GET /m_icro_posts.json
  def index
    @m_icro_posts = MIcroPost.all
  end

  # GET /m_icro_posts/1
  # GET /m_icro_posts/1.json
  def show
  end

  # GET /m_icro_posts/new
  def new
    @m_icro_post = MIcroPost.new
  end

  # GET /m_icro_posts/1/edit
  def edit
  end

  # POST /m_icro_posts
  # POST /m_icro_posts.json
  def create
    @m_icro_post = MIcroPost.new(m_icro_post_params)

    respond_to do |format|
      if @m_icro_post.save
        format.html { redirect_to @m_icro_post, notice: 'M icro post was successfully created.' }
        format.json { render :show, status: :created, location: @m_icro_post }
      else
        format.html { render :new }
        format.json { render json: @m_icro_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_icro_posts/1
  # PATCH/PUT /m_icro_posts/1.json
  def update
    respond_to do |format|
      if @m_icro_post.update(m_icro_post_params)
        format.html { redirect_to @m_icro_post, notice: 'M icro post was successfully updated.' }
        format.json { render :show, status: :ok, location: @m_icro_post }
      else
        format.html { render :edit }
        format.json { render json: @m_icro_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_icro_posts/1
  # DELETE /m_icro_posts/1.json
  def destroy
    @m_icro_post.destroy
    respond_to do |format|
      format.html { redirect_to m_icro_posts_url, notice: 'M icro post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_icro_post
      @m_icro_post = MIcroPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_icro_post_params
      params.require(:m_icro_post).permit(:content, :user_id)
    end
end
