module JIRA
  module Resource

    class SprintFactory < JIRA::BaseFactory # :nodoc:
    end

    class Sprint < JIRA::AgileBase

      def issues
        path = "/rest/agile/1.0/sprint/#{id}/issue"

        response = client.get(path)
        json = self.class.parse_json(response.body)
        results = json['issues'].map do |issue|
          client.Issue.build(issue)
        end
        results
      end


      def start_date
        return nil unless attrs["startDate"]
        DateTime.strptime(attrs["startDate"],"%Y-%m-%dT%H:%M:%S.%L%z")
      end

      def end_date
        return nil unless attrs["endDate"]
        DateTime.strptime(attrs["endDate"],"%Y-%m-%dT%H:%M:%S.%L%z")
      end
    end

  end
end