class ApplicationController < ActionController::Base
  before :detect_mobile_variant

  private

  def detect_mobile_variant
    request.variant = :mobile if request.user_agent =~ /iPhone/
  end
end
