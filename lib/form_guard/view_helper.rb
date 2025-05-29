module FormGuard
  module ViewHelper
    def form_guard_fields
      tag.div style: "display:none;" do
        safe_join([
          hidden_field_tag(:form_guard_honeypot, nil, autocomplete: "off"),
          hidden_field_tag(:form_guard_timestamp, Time.now.to_i)
        ])
      end
    end
  end
end
