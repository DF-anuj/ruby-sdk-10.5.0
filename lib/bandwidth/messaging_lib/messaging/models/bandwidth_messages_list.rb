# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # BandwidthMessagesList Model.
  class BandwidthMessagesList < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Total number of messages matched by the search
    # @return [Integer]
    attr_accessor :total_count

    # Total number of messages matched by the search
    # @return [PageInfo]
    attr_accessor :page_info

    # Total number of messages matched by the search
    # @return [List of BandwidthMessageItem]
    attr_accessor :messages

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['total_count'] = 'totalCount'
      @_hash['page_info'] = 'pageInfo'
      @_hash['messages'] = 'messages'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        total_count
        page_info
        messages
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(total_count = nil,
                   page_info = nil,
                   messages = nil)
      @total_count = total_count unless total_count == SKIP
      @page_info = page_info unless page_info == SKIP
      @messages = messages unless messages == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      total_count = hash.key?('totalCount') ? hash['totalCount'] : SKIP
      page_info = PageInfo.from_hash(hash['pageInfo']) if hash['pageInfo']
      # Parameter is an array, so we need to iterate through it
      messages = nil
      unless hash['messages'].nil?
        messages = []
        hash['messages'].each do |structure|
          messages << (BandwidthMessageItem.from_hash(structure) if structure)
        end
      end

      messages = SKIP unless hash.key?('messages')

      # Create object from extracted values.
      BandwidthMessagesList.new(total_count,
                                page_info,
                                messages)
    end
  end
end
