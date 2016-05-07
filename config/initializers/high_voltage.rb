# configure HighVoltage controller for auth
HighVoltage::PagesController.class_eval do
  skip_before_action :authenticate_user!, only: [:show]
end

HighVoltage.configure do |config|
  config.home_page = 'welcome'
end
