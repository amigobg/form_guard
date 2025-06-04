require "securerandom"

module FormGuard
  module ViewHelper
    def form_guard_fields
      config = FormGuard.configuration

      tag.div style: "display:none;", "aria-hidden": "true" do
        safe_join([
          hidden_field_tag("#{config.honeypot_field_prefix}#{SecureRandom.hex(4)}", nil, autocomplete: "off"),
          hidden_field_tag( "#{config.honeypot_time_prefix}#{SecureRandom.hex(4)}", Time.now.to_i, autocomplete: "off")
        ])
      end
    end
  end
end