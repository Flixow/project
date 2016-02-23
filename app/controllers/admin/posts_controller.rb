class Admin::PostsController < AdminController
  
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    if params[:tag]
      @posts = Post.all.includes(:user,:category, :tag).tagged_with(params[:tag])
    else
      @posts = Post.all.includes(:user,:category)
<<<<<<< HEAD
      if current_user.present?
        @geo_data = User.find(current_user)
      else
        @geo_data = Geocoder.search(request.remote_ip)[0]
      end
      @lat = @geo_data.latitude
      @long = @geo_data.longitude

      @hash = Gmaps4rails.build_markers(@posts) do |post, marker|
        marker.lat post.latitude
        marker.lng post.longitude
        marker.infowindow post.title
      end

      @hash += Gmaps4rails.build_markers(@geo_data) do |data, marker|
        @picture = {
          url: view_context.image_path("map-marker.png"),
          width:  64,
          height: 64
          }
        marker.lat data.latitude
        marker.lng data.longitude
        marker.picture @picture
      end

=======
>>>>>>> 93d15be64da8ecf17a78c880c05a99f621018a8b
    end
  end

  def show
    # Geting data from set_post
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    respond_to do |format|
      if @post.save
        format.html { redirect_to admin_posts_path, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    authorize! :update, @post
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to admin_posts_path, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to admin_posts_path, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  protected

    def set_post
      @post = Post.friendly.find(params[:id])
    end

    def post_params
<<<<<<< HEAD
      params.require(:post).permit(:title, :desc, :category_id, :tag_list, :slug, :location, :src, :link)
    end
  
    def remote_ip
      if request.remote_ip == '127.0.0.1'
        # Hard coded remote address
        '89.79.153.122'
      else
        request.remote_ip
      end
=======
      params.require(:post).permit(:title, :body, :category_id, :tag_list, :slug)
>>>>>>> 93d15be64da8ecf17a78c880c05a99f621018a8b
    end
    
end
