class ApplicationController < ActionController::Base
  before_filter :rails_version
  
  def rails_version
    @version = RAILS_GEM_VERSION
  end
end