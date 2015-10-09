require 'cgi'

##
## Fields
##
# --- !ruby/object:JIRA::Resource::Issue
# client: !ruby/object:JIRA::Client
#   options:
#     :site: https://moveloot.atlassian.net
#     :context_path: ''
#     :rest_base_path: "/rest/api/2"
#     :ssl_verify_mode: 1
#     :use_ssl: true
#     :auth_type: :basic
#     :username: admin
#     :password: bHs4hPGqXgqSlgp
#   request_client: !ruby/object:JIRA::HttpClient
#     options:
#       :username: admin
#       :password: bHs4hPGqXgqSlgp
#       :site: https://moveloot.atlassian.net
#       :context_path: ''
#       :rest_base_path: "/rest/api/2"
#       :ssl_verify_mode: 1
#       :use_ssl: true
#       :auth_type: :basic
#     cookies: {}
# attrs:
#   expand: operations,versionedRepresentations,editmeta,changelog,transitions,renderedFields
#   id: '12634'
#   self: https://moveloot.atlassian.net/rest/agile/1.0/issue/12634
#   key: ML-1966
#   fields:
#     issuetype:
#       self: https://moveloot.atlassian.net/rest/api/2/issuetype/10001
#       id: '10001'
#       description: Created by JIRA Agile - do not edit or delete. Issue type for a
#         user story.
#       iconUrl: https://moveloot.atlassian.net/secure/viewavatar?size=xsmall&avatarId=10315&avatarType=issuetype
#       name: Story
#       subtask: false
#       avatarId: 10315
#     timespent:
#     sprint:
#       id: 32
#       self: https://moveloot.atlassian.net/rest/agile/1.0/sprint/32
#       state: future
#       name: 10/12/16
#       originBoardId: 23
#     project:
#       self: https://moveloot.atlassian.net/rest/api/2/project/10003
#       id: '10003'
#       key: ML
#       name: Move Loot
#       avatarUrls:
#         48x48: https://moveloot.atlassian.net/secure/projectavatar?pid=10003&avatarId=10011
#         24x24: https://moveloot.atlassian.net/secure/projectavatar?size=small&pid=10003&avatarId=10011
#         16x16: https://moveloot.atlassian.net/secure/projectavatar?size=xsmall&pid=10003&avatarId=10011
#         32x32: https://moveloot.atlassian.net/secure/projectavatar?size=medium&pid=10003&avatarId=10011
#     fixVersions: []
#     aggregatetimespent:
#     resolution:
#     customfield_10104:
#     resolutiondate:
#     workratio: -1
#     lastViewed:
#     watches:
#       self: https://moveloot.atlassian.net/rest/api/2/issue/ML-1966/watchers
#       watchCount: 1
#       isWatching: false
#     created: '2015-09-30T16:48:16.000-0700'
#     customfield_10020:
#     customfield_10021:
#     customfield_10022:
#     priority:
#       self: https://moveloot.atlassian.net/rest/api/2/priority/3
#       iconUrl: https://moveloot.atlassian.net/images/icons/priorities/medium.svg
#       name: Medium
#       id: '3'
#     customfield_10023: Not started
#     customfield_10024:
#     labels: []
#     customfield_10016:
#     customfield_10017:
#     customfield_10018:
#     customfield_10019:
#     timeestimate:
#     aggregatetimeoriginalestimate:
#     versions: []
#     issuelinks: []
#     assignee:
#     updated: '2015-10-07T13:02:59.000-0700'
#     status:
#       self: https://moveloot.atlassian.net/rest/api/2/status/10000
#       description: ''
#       iconUrl: https://moveloot.atlassian.net/images/icons/subtask.gif
#       name: To Do
#       id: '10000'
#       statusCategory:
#         self: https://moveloot.atlassian.net/rest/api/2/statuscategory/2
#         id: 2
#         key: new
#         colorName: blue-gray
#         name: To Do
#     components:
#     - self: https://moveloot.atlassian.net/rest/api/2/component/10201
#       id: '10201'
#       name: Backend Services
#       description: Backend Services
#     - self: https://moveloot.atlassian.net/rest/api/2/component/10204
#       id: '10204'
#       name: Mobile
#       description: iOS & Android Issues
#     timeoriginalestimate:
#     description: "\r\nWe have the need to be able to mark certain tasks in Transporter
#       as \"Do Not Reject\" (DNR).    This should result in a notice in Lootix about
#       this, but will not actually prevent the rejection action.   \r\n\r\n1) \r\nFrom
#       our discussion, sounds like the best way to implement this, is if Transporter
#       in general could be able to pass in a \"Do Not Reject\" flag for a given task.
#       \ \r\n\r\nI'll leave if up to Andy / Paul  to figure out how best to accomplish
#       this, but let me know if I can help. \r\n\r\n2)  \r\n\r\nOn the other Side ML
#       Server needs to be able to Tell Transporter when to generate this flag for a
#       given task.  \r\n\r\nSeems Like  Paul / Myself can best figure out how to get
#       this set. \r\n\r\nI'm not so knowledgeable about Transporter,  but here is what
#       I envision: \r\n\r\nA SubmissionLine will get a do_not_reject  boolean attribute\r\nDuring
#       whatever action schedules that submission line for pickup,  it will check the
#       line, and if true,  add the DNR flag to the task for that SL. \r\nPaul just
#       let me know when you are ready,  how/where we should set this up. \r\n\r\nOther
#       General notes on this Feature \r\n\r\nMark it: \r\nCuration can mark DNR Manually\r\nCan
#       be marked automatically\r\nRemovals  ($0 payout)\r\nCertain BD\r\nVendor Items\r\nRecord\r\non
#       SubmissionLline\r\nOn scheduling,  DNR gets put on the task.. \r\nLootix Knows\r\nFlag
#       on task\r\nLootix Displays:\r\ncolor on Task?\r\nwarning alert on Reject attempt?\r\nWarning
#       mentions valid reasons for reject (Missing, bedbugs, etc.)"
#     customfield_10012: '0|i008m9:'
#     customfield_10013:
#     customfield_10014:
#     timetracking: {}
#     customfield_10015:
#     customfield_10005:
#     customfield_10006:
#     customfield_10007:
#     - com.atlassian.greenhopper.service.sprint.Sprint@1d7cb4b[id=32,rapidViewId=23,state=FUTURE,name=10/12/16,startDate=<null>,endDate=<null>,completeDate=<null>,sequence=32]
#     attachment: []
#     customfield_10009:
#     aggregatetimeestimate:
#     flagged: false
#     summary: Do Not Reject  notice
#     creator:
#       self: https://moveloot.atlassian.net/rest/api/2/user?username=benjamin
#       name: benjamin
#       key: benjamin
#       emailAddress: benjamin@moveloot.com
#       avatarUrls:
#         48x48: https://moveloot.atlassian.net/secure/useravatar?avatarId=10102
#         24x24: https://moveloot.atlassian.net/secure/useravatar?size=small&avatarId=10102
#         16x16: https://moveloot.atlassian.net/secure/useravatar?size=xsmall&avatarId=10102
#         32x32: https://moveloot.atlassian.net/secure/useravatar?size=medium&avatarId=10102
#       displayName: Ben Stingle
#       active: true
#       timeZone: America/Los_Angeles
#     subtasks: []
#     reporter:
#       self: https://moveloot.atlassian.net/rest/api/2/user?username=benjamin
#       name: benjamin
#       key: benjamin
#       emailAddress: benjamin@moveloot.com
#       avatarUrls:
#         48x48: https://moveloot.atlassian.net/secure/useravatar?avatarId=10102
#         24x24: https://moveloot.atlassian.net/secure/useravatar?size=small&avatarId=10102
#         16x16: https://moveloot.atlassian.net/secure/useravatar?size=xsmall&avatarId=10102
#         32x32: https://moveloot.atlassian.net/secure/useravatar?size=medium&avatarId=10102
#       displayName: Ben Stingle
#       active: true
#       timeZone: America/Los_Angeles
#     customfield_10000:
#     aggregateprogress:
#       progress: 0
#       total: 0
#     customfield_10001:
#     customfield_10002:
#     customfield_10003:
#     environment:
#     duedate:
#     progress:
#       progress: 0
#       total: 0
#     comment:
#       startAt: 0
#       maxResults: 0
#       total: 0
#       comments: []
#     votes:
#       self: https://moveloot.atlassian.net/rest/api/2/issue/ML-1966/votes
#       votes: 0
#       hasVoted: false
#     worklog:
#       startAt: 0
#       maxResults: 20
#       total: 0
#       worklogs: []
# expanded: false
# deleted: false

module JIRA
  module Resource

    class IssueFactory < JIRA::BaseFactory # :nodoc:
    end

    class Issue < JIRA::Base

      has_one :reporter,  :class => JIRA::Resource::User,
                          :nested_under => 'fields'
      has_one :assignee,  :class => JIRA::Resource::User,
                          :nested_under => 'fields'
      has_one :project,   :nested_under => 'fields'

      has_one :issuetype, :nested_under => 'fields'

      has_one :priority,  :nested_under => 'fields'

      has_one :status,    :nested_under => 'fields'

      has_many :transitions

      has_many :components, :nested_under => 'fields'

      has_many :comments, :nested_under => ['fields','comment']

      has_many :attachments, :nested_under => 'fields',
                          :attribute_key => 'attachment'

      has_many :versions, :nested_under => 'fields'

      has_many :worklogs, :nested_under => ['fields','worklog']

      def self.all(client)
        response = client.get(
          client.options[:rest_base_path] + "/search",
          :expand => 'transitions.fields'
        )
        json = parse_json(response.body)
        json['issues'].map do |issue|
          client.Issue.build(issue)
        end
      end

      def self.jql(client, jql, options = {fields: nil, start_at: nil, max_results: nil})
        url = client.options[:rest_base_path] + "/search?jql=" + CGI.escape(jql)

        url << "&fields=#{options[:fields].map{ |value| CGI.escape(value.to_s) }.join(',')}" if options[:fields]
        url << "&startAt=#{CGI.escape(options[:start_at].to_s)}" if options[:start_at]
        url << "&maxResults=#{CGI.escape(options[:max_results].to_s)}" if options[:max_results]

        response = client.get(url)
        json = parse_json(response.body)
        json['issues'].map do |issue|
          client.Issue.build(issue)
        end
      end

      def respond_to?(method_name, include_all=false)
        if attrs.keys.include?('fields') && attrs['fields'].keys.include?(method_name.to_s)
          true
        else
          super(method_name)
        end
      end

      def method_missing(method_name, *args, &block)
        if attrs.keys.include?('fields') && attrs['fields'].keys.include?(method_name.to_s)
          attrs['fields'][method_name.to_s]
        else
          super(method_name)
        end
      end

    end

  end
end
