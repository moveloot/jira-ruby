module JIRA
  module Resource

    class AttachmentFactory < JIRA::BaseFactory # :nodoc:
    end

    class Attachment < JIRA::Base
      has_one :author, :class => JIRA::Resource::User
      belongs_to :issue

      def self.endpoint_name
        return "attachments"
      end

      def save!(attrs)
        http_method = new_record? ? :post : :put
        headers = {
            "X-Atlassian-Token" => "nocheck"
        }
        request = Net::HTTP::Post::Multipart.new(url,{ "file" => UploadIO.new(File.new(attrs['file']), "application/binary", attrs['file']) }, headers)
        request_client = client.request_client
        options = client.request_client.options
        request.basic_auth(options[:username], options[:password])
        response = request_client.basic_auth_http_conn.request(request)

        set_attrs(attrs, false)
        unless response.body.nil? or response.body.length < 2
          json = self.class.parse_json(response.body)
          attachment = json[0]
          set_attrs(attachment)
        end

        @expanded = false
        true
      end
    end

  end
end
