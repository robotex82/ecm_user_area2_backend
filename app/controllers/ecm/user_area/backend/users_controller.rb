class Ecm::UserArea::Backend::UsersController < Itsf::Backend::Resource::BaseController
  def self.resource_class
    # Set the resource class here.
    #
    # Default: Ecm::UserArea::User
    #
    Ecm::UserArea::User
  end

  def autocomplete
    @collection = collection_scope.autocomplete(params[:term])

    respond_to do |format|
      format.json { render json: @collection.map { |q| q.as_json(style: :autocomplete) } }
    end
  end

  private
  
  def permitted_params
    # Set the allowed params, for your create and update methods.
    # 
    # Example: params
    #            .require(:ecm_user_area_user)
    #              .permit(:title, :body)
    # 
    params
      .require(:user)
        .permit(:email, :password, :password_confirmation, :active, :confirmed, :approved)
  end
end
