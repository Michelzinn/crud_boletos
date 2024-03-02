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

    bank_billet = BankBillets::Services::Create.new.call(BoletoSimples::BankBillet, params)

    permitted_params_with_external_id = permitted_params.merge(external_billet_id: bank_billet[:id])

    BankBillet.create(permitted_params_with_external_id) if bank_billet.response_errors.blank?

    redirect_to root_path
  end

  private

  def permitted_params
    params.permit(
      :description,
      :amount,
      :expire_at,
      :customer_zipcode,
      :customer_state,
      :customer_city_name,
      :customer_neighborhood,
      :customer_address,
      :customer_address_number,
      :customer_address_complement,
      :customer_cnpj_cpf,
      :customer_email,
      :customer_person_name,
      :customer_person_type,
      :customer_phone_number,
      :external_billet_id
    )
  end
end
