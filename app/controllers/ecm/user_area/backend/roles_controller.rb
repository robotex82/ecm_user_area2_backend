class Ecm::UserArea::Backend::RolesController < Itsf::Backend::BaseController
  def self.resource_class
    # Set the resource class here.
    #
    # Default: Ecm::UserArea::Role
    #
    Ecm::UserArea::Role
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
    #            .require(:role)
    #              .permit(:title, :body)
    # 
    params
      .require(:role)
        .permit(:identifier, :enabled_from, :enabled_to, permission_ids: [], user_ids: [])
  end
end
