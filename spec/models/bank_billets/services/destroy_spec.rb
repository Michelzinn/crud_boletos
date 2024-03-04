require 'rails_helper'

RSpec.describe BankBillets::Services::Destroy, type: :model do
  describe '#call' do
    it '' do
      bank_billet_service_mock = instance_double('bank_billet_service_mock')
      service_response_mock = instance_double('service_response_mock')

      allow(bank_billet_service_mock).to receive(:cancel).with({ id: 'id' }).and_return(service_response_mock)

      allow(service_response_mock).to receive(:response_errors).and_return({ mock: 'mock' })

      response_returned_from_service = BankBillets::Services::Destroy.new.call(bank_billet_service_mock, 'id')

      expect(response_returned_from_service.response_errors).to eq({ mock: 'mock' })
    end
  end
end
