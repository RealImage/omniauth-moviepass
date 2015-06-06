require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Moviepass < OmniAuth::Strategies::OAuth2
      option :name, "moviepass"

      option :client_options, {
        :site          => 'https://moviepass.io/',
        :authorize_url => 'https://moviepass.io/dialog/authorize',
        :token_url     => 'https://moviepass.io/oauth/token',
      }

      uid{ raw_info['user_id'] }

      info do
        {
          :name => raw_info['name'],
          :email => raw_info['email']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('api/userinfo').parsed
      end
    end
  end
end
