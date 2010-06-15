class CommentsController < InheritedResources::Base
  belongs_to :idea
  actions :create
  require_user

  def create
    build_resource.user = current_user
    # FIXME: hack. need to ajax render form with proper errors and
    # keep already entered data
    super do |good, bad|
      good.html {redirect_to @idea}
      bad.html do
        flash[:error] = resource.errors.full_messages.join(", ")
        redirect_to @idea
      end
    end
  end
end

