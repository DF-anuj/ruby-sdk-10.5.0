# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # A participant object
  class Participant < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique id of the participant
    # @return [String]
    attr_accessor :id

    # Full callback url to use for notifications about this participant
    # @return [String]
    attr_accessor :callback_url

    # Defines if this participant can publish audio or video
    # @return [List of PublishPermissionEnum]
    attr_accessor :publish_permissions

    # List of session ids this participant is associated with
    # Capped to one
    # @return [List of String]
    attr_accessor :sessions

    # List of session ids this participant is associated with
    # Capped to one
    # @return [Subscriptions]
    attr_accessor :subscriptions

    # User defined tag to associate with the participant
    # @return [String]
    attr_accessor :tag

    # Optional field to define the device api version of this participant
    # @return [DeviceApiVersionEnum]
    attr_accessor :device_api_version

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['callback_url'] = 'callbackUrl'
      @_hash['publish_permissions'] = 'publishPermissions'
      @_hash['sessions'] = 'sessions'
      @_hash['subscriptions'] = 'subscriptions'
      @_hash['tag'] = 'tag'
      @_hash['device_api_version'] = 'deviceApiVersion'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        id
        callback_url
        publish_permissions
        sessions
        subscriptions
        tag
        device_api_version
      ]
    end

    # An array for nullable fields
    def nullables
      %w[
        callback_url
      ]
    end

    def initialize(id = nil,
                   callback_url = nil,
                   publish_permissions = nil,
                   sessions = nil,
                   subscriptions = nil,
                   tag = nil,
                   device_api_version = DeviceApiVersionEnum::V2)
      @id = id unless id == SKIP
      @callback_url = callback_url unless callback_url == SKIP
      @publish_permissions = publish_permissions unless publish_permissions == SKIP
      @sessions = sessions unless sessions == SKIP
      @subscriptions = subscriptions unless subscriptions == SKIP
      @tag = tag unless tag == SKIP
      @device_api_version = device_api_version unless device_api_version == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      callback_url = hash.key?('callbackUrl') ? hash['callbackUrl'] : SKIP
      publish_permissions =
        hash.key?('publishPermissions') ? hash['publishPermissions'] : SKIP
      sessions = hash.key?('sessions') ? hash['sessions'] : SKIP
      subscriptions = Subscriptions.from_hash(hash['subscriptions']) if hash['subscriptions']
      tag = hash.key?('tag') ? hash['tag'] : SKIP
      device_api_version = hash['deviceApiVersion'] ||= DeviceApiVersionEnum::V2

      # Create object from extracted values.
      Participant.new(id,
                      callback_url,
                      publish_permissions,
                      sessions,
                      subscriptions,
                      tag,
                      device_api_version)
    end
  end
end
