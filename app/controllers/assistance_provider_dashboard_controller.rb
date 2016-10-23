class AssistanceProviderDashboardController < ApplicationController
  before_filter :ensure_user_is_assistance_provider
  
  def index
    @qualified_need = QualifiedNeed.find_by(user_id: current_user.id)
  end

  def reject
    puts "reject... #{@qualified_need.inspect}"
    qualified_need.user_id = nil
    provider = AssistanceProvider.find_by(user_id: current_user.id)
    qualified_need.rejections << provider
    qualified_need.number_of_rejections += 1
    qualified_need.save!
  end

  def pledge
    puts "pledge... #{@qualified_need.inspect}"
    qualified_need.update_attributes funded: true
  end

  private

  def qualified_need
    @qualified_need ||= QualifiedNeed.find(params[:id])
  end
end
