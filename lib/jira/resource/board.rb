module JIRA
  module Resource

    class BoardFactory < JIRA::BaseFactory # :nodoc:
    end

    class Board < JIRA::AgileBase
      def issues
        raise "not implemented yet"
      end

      def epics
        raise "not implemented yet"
      end

      def open_sprints
        path = "/rest/agile/1.0/board/#{id}/sprint"
        state = "active,future"

        response = client.get(url_with_query_params(path,{"state" => state}))
        json = self.class.parse_json(response.body)
        json['values'].map do |attrs|
          client.Sprint.build(attrs)
        end
      end

      def issues_for_sprint(sprint)
        path = "/rest/agile/1.0/board/#{id}/sprint/#{sprint.id}/issue"

        response = client.get(path)
        json = self.class.parse_json(response.body)
        json['issues'].map do |issue|
          client.Issue.build(issue)
        end
      end

    end

  end
end