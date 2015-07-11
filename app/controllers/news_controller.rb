class NewsController < InheritedResources::Base

  private

    def news_params
      params.require(:news).permit()
    end
end

