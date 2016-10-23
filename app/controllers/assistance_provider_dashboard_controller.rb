class AssistanceProviderDashboardController < ApplicationController
  before_filter :ensure_user_is_assistance_provider
  
  def index
    @qualified_need = QualifiedNeed.find_by(user_id: current_user.id)
  end

  def reject
    puts "reject... #{qualified_need.inspect}"
    qualified_need.user_id = nil
    provider = AssistanceProvider.find_by(user_id: current_user.id)
    puts "#{provider.inspect}"
    qualified_need.rejections << provider.id
    qualified_need.save!
    puts "#{qualified_need.inspect}."
  end

  def pledge
    qualified_need.update_attributes funded: true
  end

  private

  def qualified_need
    @qualified_need ||= QualifiedNeed.find(params[:id])
  end
end
