class PostImagesController < InheritedResources::Base

  private

    def post_image_params
      params.require(:post_image).permit(:belongs_to, :image)
    end
end

