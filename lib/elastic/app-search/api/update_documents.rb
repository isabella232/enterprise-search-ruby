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
        # Documents - Partial update of documents.
        #
        # @param engine_name [String]  (*Required*)
        #
        # @see https://www.elastic.co/guide/en/app-search/current/documents.html#documents-partial
        #
        def update_documents(body = {}, parameters = {})
          raise ArgumentError, "Required parameter 'engine_name' missing" unless parameters[:engine_name]

          request(
            :patch,
            "/api/as/v1/engines/#{engine_name}/documents",
            parameters,
            body
          )
        end
      end
    end
  end
end