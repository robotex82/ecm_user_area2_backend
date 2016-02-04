module Ecm::UserArea::Backend
  class CreateDefaultUserServiceController < Itsf::Backend::Service::BaseController
    def self.service_class
      Ecm::UserArea::CreateDefaultUserService
    end

    private

    def permitted_params
      params.fetch(:ecm_user_area_create_default_user_service, {}).permit()
    end
  end
end
