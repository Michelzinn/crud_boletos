class BankBilletsController < ActionController::Base
  layout 'application'

  def index
    @bank_billets = BankBillet.all
  end

  def new
    @states = States::OPTIONS
  end

  def create
    params.permit!

    service_status = BankBillets::Services::Create.new.call(BoletoSimples::BankBillet, params)

    BankBillet.create(params) if service_status == '200'
  end
end
