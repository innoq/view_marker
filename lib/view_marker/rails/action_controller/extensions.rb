# Copyright 2011 innoQ Deutschland GmbH
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

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
          Rails.logger.debug ' Started view rendering '.center(80, '-')
          render_without_hook_for_logging(options, extra_options)
        end
      end

    end
  end
end