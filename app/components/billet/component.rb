class Billet::Component < ViewComponent::Base
  include Turbo::FramesHelper

  def initialize(billet:)
    @billet = billet
  end
end
