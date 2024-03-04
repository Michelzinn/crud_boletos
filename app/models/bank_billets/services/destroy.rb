module BankBillets::Services
  class Destroy
    def call(billet_service_handler, external_billet_id)
      service_response = billet_service_handler.cancel(id: external_billet_id) 

      service_response
    end
  end
end
