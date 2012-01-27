require "view_marker/version"
require "view_marker/rails/action_controller/extensions"
require "action_controller"

module ViewMarker
  ActiveSupport.on_load(:action_controller) do
    include ViewMarker::Rails::ActionController::Extensions
  end
end
