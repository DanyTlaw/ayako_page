class PostsController < InheritedResources::Base

	def index
		@posts = Post.all.order("created_at DESC").paginate(page: params[:page], per_page: 4)
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

	    respond_to do |format|
	      if @post.save
	        format.html { redirect_to @post, notice: 'Post was successfully created.' }
	        format.json { render :show, status: :created, location: @post }
	      else
	        format.html { render :new }
	        format.json { render json: @post.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def edit
	end

	def update
		respond_to do |format|
	      if @post.update(theme_params)
	        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
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
	      format.html { redirect_to post_url, notice: 'Post was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end


  private

    def post_params
      params.require(:post).permit(:title, :content)
    end
end

