require 'rails_helper'

RSpec.describe BankBillets::Services::Create, type: :model do
  describe '#call' do
    it '' do
      bank_billet_service_mock = instance_double('bank_billet_service_mock')
      bank_billet_mock = instance_double('bank_billet_mock')
      expected_status_return = 'status returned by api'

      allow(bank_billet_service_mock).to receive(:create).and_return(bank_billet_mock)
      allow(bank_billet_mock).to receive(:response_errors).and_return({ code: expected_status_return })

      result = BankBillets::Services::Create.new.call(bank_billet_service_mock, {})

      expect(result).to be(expected_status_return)
    end
  end
end
