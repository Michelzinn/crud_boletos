require 'rails_helper'

RSpec.describe BankBillets::Services::Create, type: :model do
  describe '#call' do
    it '' do
      bank_billet_service_mock = instance_double('bank_billet_service_mock')
      bank_billet_mock = instance_double('bank_billet_mock')

      allow(bank_billet_service_mock).to receive(:create).and_return(bank_billet_mock)
      allow(bank_billet_mock).to receive(:response_errors).and_return({mock: 'mock'})

      bank_billet_returned_from_service = BankBillets::Services::Create.new.call(bank_billet_service_mock, {})

      expect(bank_billet_returned_from_service.response_errors).to eq({mock: 'mock'})
    end
  end
end
