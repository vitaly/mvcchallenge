class IdeasController < InheritedResources::Base
  belongs_to :user, :optional => true
  require_user :except => [:index, :show]

  def show
    @comment = Comment.new(params[:comment])
    @rating = Rating.new(params[:rating])
    super
  end

  def create
    build_resource.user = current_user
    super {user_ideas_path(current_user)}
  end
end
