class SearchController < ApplicationController
  def index
    def set_query
      @query = Post.ransack(params[:q])
      @posts = @query.result(distinct: true)
    end
  end
end
