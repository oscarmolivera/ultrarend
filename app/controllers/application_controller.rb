class ApplicationController < ActionController::Base
  include HttpAcceptLanguage::AutoLocale
  def after_sign_in_path_for(resource_or_scope)
    dashboards_index_path
  end
  
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
