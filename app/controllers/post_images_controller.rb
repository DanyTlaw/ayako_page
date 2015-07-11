class PostImagesController < InheritedResources::Base

	def index
	end

	def show
	end

	def new
		@post_image = @post.post_image.build
	end

	def create
	    @post_image = @post.post_image.build(post_image_params)
	        if @post_image.save
	        	redirect_to [@post, @post_image], notice: 'Postimage was successfully created.'
	        else
	        	render action: "new"
	        end	    
	end

	def edit
		@post_image = @post.post_image.find(params[:id])
	end

	def update
	    @post_image = @post.post_image.find(params[:id])
	    	if @post_image.update_attributes(post_image_params)
	        	redirect_to [@post, @post_image], notice: 'Postimage was successfully updated.'
			else
				render action: "edit"
			end    
	end

	def destroy
	    @post_image = @post.post_image.find(params[:id])
	    @post_image.destroy

	    redirect_to post_post_image_path(@post)
	end


  private

    def post_image_params
    	params.require(:post_image).permit(:belongs_to, :image)
    end
end

