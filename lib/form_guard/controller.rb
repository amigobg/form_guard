require "active_support/concern"

module FormGuard
  module Controller
    extend ActiveSupport::Concern

    included do
      before_action :verify_honeypot!
    end

    private
      def verify_honeypot!
        return unless request.post? || request.patch? || request.put?

        config = FormGuard.configuration
        min_delay = config.min_delay

        raw_params = params.to_unsafe_h

        honeypot_value = raw_params.find { |key, _| key.start_with?(config.honeypot_field_prefix) }&.last
        honeypot_time = raw_params.find { |key, _| key.start_with?(config.honeypot_time_prefix) }&.last.to_i

        if honeypot_value.present? || honeypot_time <= 0 || (Time.now.to_i - honeypot_time) < min_delay
          redirect_to root_path, alert: "Suspicious activity detected"
        end
      end
  end
end
