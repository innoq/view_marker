require "active_support/concern"

module ViewMarker
  module Rails
    module ActionController
      
      module Extensions
        extend ActiveSupport::Concern
        
        included do
          alias_method_chain :render, :hook_for_logging
        end
      
        # Add a line to the log to mark the beginning of the view
        def render_with_hook_for_logging(options = nil, extra_options = {})
          logger.debug ' Started view rendering '.center(80, '-')
          render_without_hook_for_logging(options, extra_options)
        end
      end
        
    end
  end
end