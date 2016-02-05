class Ecm::UserArea::Backend::UsersController < Itsf::Backend::Resource::BaseController
  def self.resource_class
    # Set the resource class here.
    #
    # Default: Ecm::UserArea::User
    #
    Ecm::UserArea::User
  end

  private

  def collection_scope
    # Customize the collection scope here for collection retrival (i.e. for the
    # index action).
    #
    # Example: current_user.posts.includes(:comments)
    #
    # Default: resource_class
    #
    resource_class
  end

  def permitted_params
    # Set the allowed params, for your create and update methods.
    # 
    # Example: params
    #            .require(:ecm_user_area_user)
    #              .permit(:title, :body)
    # 
    params
      .require(:user)
        .permit(:email, :password, :password_confirmation)
  end
end
