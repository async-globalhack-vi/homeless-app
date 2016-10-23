class AssistanceProviderDashboardController < ApplicationController
  before_filter :ensure_user_is_assistance_provider
  
  def index
    @qualified_need = QualifiedNeed.find_by(user_id: current_user.id)
  end

  def reject
    qualified_need.user_id = nil
    # provider = AssistanceProvider.find_by(user_id: current_user.id)
    qualified_need.rejections << provider
    qualified_need.number_of_rejections += 1
    qualified_need.save!
  end

  def pledge
    provider.pledge(qualified_need)
  end

  private

  def provider
    @provider ||= AssistanceProvider.find_by(user_id: current_user.id)
  end

  def qualified_need
    @qualified_need ||= QualifiedNeed.find(params[:id])
  end
end
