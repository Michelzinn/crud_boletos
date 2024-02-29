module BankBillets::Services
  class Create
    def call(billet_service_handler, params)
      bank_billet = billet_service_handler.create(params)

      bank_billet.response_errors[:code]
    end
  end
end
