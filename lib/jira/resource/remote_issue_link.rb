module JIRA
  module Resource

    class RemoteIssueLinkFactory < JIRA::BaseFactory # :nodoc:
    end

    class RemoteIssueLink < JIRA::Base
      def save!(issue_key, attrs)
        url = "/rest/api/latest/issue/#{issue_key}/remotelink"
        http_method = new_record? ? :post : :put
        response = client.send(http_method, url, attrs.to_json)
        set_attrs(attrs, false)
        set_attrs_from_response(response)
        @expanded = false
        true
      end


    end

  end
end