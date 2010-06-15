class UsersController < InheritedResources::Base
  require_user :except => [:new, :create]
  def create
    super {login_path}
  end
end
