
module JIRA
  class AgileBase < Base
    def self.all(client, options = {})
      start_at = options.delete(:start_at) || 0
      max_results = options.delete(:max_results) || 30
      path = collection_path(client)

      # path = "#{path}?start_at=#{start_at}&max_results=#{max_results}"

      response = client.get(url_with_query_params(path,{"startAt" => start_at, "maxResults" => max_results}))
      json = parse_json(response.body)
      json["values"].map do |attrs|
        self.new(client, {:attrs => attrs}.merge(options))
      end
    end

    def self.collection_path(client, prefix = '/')
      # client.options[:rest_base_path] + prefix + self.endpoint_name
      "/rest/agile/1.0" + prefix + self.endpoint_name
    end

    def self.singular_path(client, key, prefix = '/')
      collection_path(client, prefix) + '/' + key
    end
  end
end
