# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
    module WebRtc
      #  bandwidth client class.
      class Client
        attr_reader :config

        # Access to client controller.
        # @return [APIController] Returns the controller instance.
        def client
          @client ||= APIController.new config
        end

        def initialize(timeout: 60, max_retries: 0, retry_interval: 1,
                       backoff_factor: 2,
                       retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524, 408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
                       retry_methods: %i[get put get put],
                       environment: Environment::PRODUCTION,
                       base_url: 'https://www.example.com',
                       messaging_basic_auth_user_name: 'TODO: Replace',
                       messaging_basic_auth_password: 'TODO: Replace',
                       multi_factor_auth_basic_auth_user_name: 'TODO: Replace',
                       multi_factor_auth_basic_auth_password: 'TODO: Replace',
                       phone_number_lookup_basic_auth_user_name: 'TODO: Replace',
                       phone_number_lookup_basic_auth_password: 'TODO: Replace',
                       voice_basic_auth_user_name: 'TODO: Replace',
                       voice_basic_auth_password: 'TODO: Replace',
                       web_rtc_basic_auth_user_name: 'TODO: Replace',
                       web_rtc_basic_auth_password: 'TODO: Replace',
                       config: nil)
          @config = if config.nil?
                      Configuration.new(timeout: timeout,
                                        max_retries: max_retries,
                                        retry_interval: retry_interval,
                                        backoff_factor: backoff_factor,
                                        retry_statuses: retry_statuses,
                                        retry_methods: retry_methods,
                                        environment: environment,
                                        base_url: base_url,
                                        messaging_basic_auth_user_name: messaging_basic_auth_user_name,
                                        messaging_basic_auth_password: messaging_basic_auth_password,
                                        multi_factor_auth_basic_auth_user_name: multi_factor_auth_basic_auth_user_name,
                                        multi_factor_auth_basic_auth_password: multi_factor_auth_basic_auth_password,
                                        phone_number_lookup_basic_auth_user_name: phone_number_lookup_basic_auth_user_name,
                                        phone_number_lookup_basic_auth_password: phone_number_lookup_basic_auth_password,
                                        voice_basic_auth_user_name: voice_basic_auth_user_name,
                                        voice_basic_auth_password: voice_basic_auth_password,
                                        web_rtc_basic_auth_user_name: web_rtc_basic_auth_user_name,
                                        web_rtc_basic_auth_password: web_rtc_basic_auth_password)
                    else
                      config
                    end
        end
  end
end
end