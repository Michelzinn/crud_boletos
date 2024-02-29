module BankBillets::Services
  class Create
    def call(slip_service_handler, params)
      bank_billet = slip_service_handler.create(params)

      bank_billet.response_errors[:code]
    end
  end
end
