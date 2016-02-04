class Ecm::UserArea::Backend::PermissionsController < Itsf::Backend::Resource::BaseController
  def self.resource_class
    # Set the resource class here.
    #
    # Default: Ecm::UserArea::Permission
    #
    Ecm::UserArea::Permission
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
    #            .require(:permission)
    #              .permit(:title, :body)
    # 
    params
      .require(:permission)
        .permit(:identifier, :enabled_from, :enabled_to, role_ids: [])
  end
end
