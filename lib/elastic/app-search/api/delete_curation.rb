# frozen_string_literal: true

# Licensed to Elasticsearch B.V. under one or more contributor
# license agreements. See the NOTICE file distributed with
# this work for additional information regarding copyright
# ownership. Elasticsearch B.V. licenses this file to you under
# the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

module Elastic
  module EnterpriseSearch
    module AppSearch
      module Actions
        # Curations - Delete a curation by ID
        #
        # @param engine_name [String]  (*Required*)
        # @param arguments [Hash] endpoint arguments
        # @option curation_id [String]  (*Required*)
        # @option body - The request body
        #
        #
        # @see https://www.elastic.co/guide/en/app-search/current/curations.html#curations-destroy
        #
        def delete_curation(engine_name, arguments = {})
          raise ArgumentError, "Required parameter 'engine_name' missing" unless engine_name
          raise ArgumentError, "Required parameter 'curation_id' missing" unless arguments[:curation_id]

          curation_id = arguments[:curation_id]

          body = arguments.delete(:body) || {}

          request(
            :delete,
            "api/as/v1/engines/#{engine_name}/curations/#{curation_id}/",
            arguments,
            body
          )
        end
      end
    end
  end
end
