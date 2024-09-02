# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # ErrorWithRequest class.
  class ErrorWithRequestException < APIException
    SKIP = Object.new
    private_constant :SKIP

    # An error message pertaining to what the issue could be
    # @return [String]
    attr_accessor :error

    # The associated requestId from AWS
    # @return [String]
    attr_accessor :request_id

    # The constructor.
    # @param [String] The reason for raising an exception.
    # @param [HttpResponse] The HttpReponse of the API call.
    def initialize(reason, response)
      super(reason, response)
      hash = APIHelper.json_deserialize(@response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      @error = hash.key?('error') ? hash['error'] : SKIP
      @request_id = hash.key?('requestId') ? hash['requestId'] : SKIP
    end
  end
end
