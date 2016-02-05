module Ecm::UserArea::Backend
  class CreateDefaultUserServiceController < Itsf::Backend::Service::BaseController
    def self.service_class
       Ecm::UserArea::CreateDefaultUserService
    end

    private

    def permitted_params
      params.fetch(:create_default_user_service, {})
    end
  end
end