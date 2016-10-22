class AssistanceProviderDashboardController < ApplicationController
  before_filter :ensure_user_is_assistance_provider
  
  def index
    @qualified_need = QualifiedNeed.find_by(user_id: current_user.id)
  end

  def reject
    qualified_need.user_id = nil
    qualified_need.rejections << AssistanceProvider.find_by(user_id: current_user.id)
    qualified_need.save!
  end

  def pledge
    qualified_need.update_attributes funded: true
  end

  private

  def qualified_need
    @qualified_need ||= QualifiedNeed.find(params[:id])
  end
end
