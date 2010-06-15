class UsersController < InheritedResources::Base
  require_user :except => [:index, :new, :create, :show]
  def create
    super {login_path}
  end
end
